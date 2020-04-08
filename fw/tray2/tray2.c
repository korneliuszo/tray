#include <avr/io.h>
#include <avr/interrupt.h>
#include "tlay2.h"
#include "tlay2_ff.h"

#include "measure.h"
#include "register.h"

static uint32_t last_measure;
static uint32_t measure;
static uint8_t cnt;

uint8_t tlay2_boot_mode() {
	return 0;
}

uint8_t process_02(void) {
	uint8_t *buff = tlay2_get_data();
	if (buff[2] != 0x02)
		return 0;
	switch (buff[3]) {
	case 0x00: {
		measure_set_channel(buff[4]);
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	}
	case 0x01: {
		measure_start();
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	}
	case 0x02: {
		tlay2_tx_init_reply();
		tlay2_tx_byte(cnt);
		tlay2_tx_u32(measure);
		tlay2_tx_end();
		break;
	}
	default:
		break;
	}
	return 1;
}

int main(void) {
	sei();
	tlay2_init();
	measure_init();
	register_init();
	for (;;) {
		if (tlay2_checkslave()) {
			if (tlay2_process_ff()) {
			} else if (process_02()) {
			}
			tlay2_reset();
		}
		if (measure_complete())
		{
			cnt++;
			uint32_t meas=register_get();
			measure = meas - last_measure;
			last_measure = meas;
		}
	}
	return 0;
}
