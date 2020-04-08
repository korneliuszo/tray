#include "tlay2.h"
#include "tlay2_ff.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/wdt.h>
#include <avr/boot.h>

uint8_t tlay2_boot_mode() {
	return 1;
}

void StartSketch() {
	/* jump to beginning of application space */
	__asm__ volatile("jmp 0x0000");
}

uint16_t bootKey = 0x7777;
static volatile uint16_t *const bootKeyPtr = (volatile uint16_t*) 0x0800;

uint8_t mcusr_state __attribute__ ((section (".noinit")));
void get_mcusr(void) __attribute__((naked))
__attribute__((section(".init3"))) __attribute__((used));
void get_mcusr(void) {
#if defined(MCUCSR)
	mcusr_state = MCUCSR;
	MCUCSR = 0;
#else
	mcusr_state = MCUSR;
	MCUSR = 0;
#endif
	wdt_disable();
}

uint8_t process_fe() {
	static uint32_t page;
	static uint16_t page_offset;
	uint8_t *buff = tlay2_get_data();
	uint8_t len = tlay2_get_len();
	if (buff[2] != 0xfe)
		return 0;
	switch (buff[3]) {
	case 0x00:
		tlay2_tx_init_reply();
		tlay2_tx_u16(SPM_PAGESIZE);
		tlay2_tx_end();
		break;
	case 0x01: {
		uint32_t addr = tlay2_rx_u32(&buff[4]);
		uint8_t l = buff[8];
		tlay2_tx_init_reply();
		for (uint8_t i = 0; i < l; i++) {
			tlay2_tx_byte(pgm_read_byte(addr + i));
		}
		tlay2_tx_end();
		break;
	}
	case 0x02: {
		page = tlay2_rx_u32(&buff[4]);
		page_offset = 0;
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	}
	case 0x03: {
		eeprom_busy_wait();
		boot_page_erase(page);
		boot_spm_busy_wait();      // Wait until the memory is erased.
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	}
	case 0x04: {
		len -= 4;
		buff += 4;
		for (uint8_t i = 0; i < len; i += 2) {
			uint16_t w = *buff++;
			w += (*buff++) << 8;
			boot_page_fill(page + page_offset, w);
			page_offset += 2;
		}
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	}
	case 0x05: {
		boot_page_write(page);
		boot_spm_busy_wait();      // Wait until the memory is erased.
		boot_rww_enable();
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	}
	default:
		break;
	}
	return 1;
}

int main() {

	uint16_t bootKeyPtrVal = *bootKeyPtr;
	*bootKeyPtr = 0;

	if (pgm_read_word(0) != 0xFFFF) {
		if (mcusr_state & (1 << PORF)) {
			// power reset
			StartSketch();
		} else if (mcusr_state & (1 << EXTRF)) {
			StartSketch();

		} else if ((mcusr_state == (1 << WDRF)) && (bootKeyPtrVal != bootKey)) {
			// If it looks like an "accidental" watchdog reset then start the sketch.
			StartSketch();
		}
	}

	MCUCR = (1 << IVCE);
	MCUCR = (1 << IVSEL);
	sei();
	tlay2_init();
	for (;;) {
		if (tlay2_checkslave()) {
			if (tlay2_process_ff()) {
			} else if (process_fe()) {
			}
			tlay2_reset();
		}
	}
	return 0;
}
