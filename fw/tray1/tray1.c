#include <avr/io.h>
#include <avr/interrupt.h>
#include "tlay2.h"
#include "tlay2_ff.h"
#include "uart1.h"
#include "pps.h"
#include "pwm.h"

enum {
	PPS_HOST_MODE = 0,
};

static uint8_t pps_mode = PPS_HOST_MODE;
static int16_t pps_diff;
static uint8_t pps_probe;

uint8_t tlay2_boot_mode() {
	return 0;
}

uint8_t process_01(void) {
	uint8_t *buff = tlay2_get_data();
	uint8_t len = tlay2_get_len();
	if (buff[2] != 0x01)
		return 0;
	switch (buff[3]) {
	case 0x00: {
		uint8_t i;
		for (i = 4; i < len; i++) {
			if (!uart1_send_byte(buff[i])) {
				break;
			}
		}
		tlay2_tx_init_reply();
		tlay2_tx_byte(i - 4);
		uint8_t b;
		for (i = 5; i < 30; i++) {
			if (!uart1_get_byte(&b))
				break;
			tlay2_tx_byte(b);
		}
		tlay2_tx_end();
		break;
	}
	case 0x01: {
		if (len == 5)
			pps_mode = buff[4];
		tlay2_tx_init_reply();
		tlay2_tx_byte(pps_mode);
		tlay2_tx_end();
		break;
	}
	case 0x02: {
		tlay2_tx_init_reply();
		tlay2_tx_byte(pps_probe);
		tlay2_tx_u16(pps_diff);
		tlay2_tx_end();
		break;
	}
	case 0x03: {
		pwm_set(tlay2_rx_u16(&buff[4]));
		tlay2_tx_init_reply();
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
	uart1_init();
	pps_init();
	pwm_init();
	for (;;) {
		if (tlay2_checkslave()) {
			if (tlay2_process_ff()) {
			} else if (process_01()) {
			}
			tlay2_reset();
		}
		if (pps_get_meas(&pps_diff)) {
			pps_probe += 1;
			switch (pps_mode) {
			case PPS_HOST_MODE: {
				break;
			}
			default:
				break;
			}
		}
	}
	return 0;
}
