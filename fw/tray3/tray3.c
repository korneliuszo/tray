#include <avr/io.h>
#include <avr/interrupt.h>
#include "tlay2.h"
#include "tlay2_ff.h"

static const uint8_t adcsra_common = (1<<ADEN) | (1<<ADPS2) | (1<<ADPS1) | (1<<ADPS0);

uint8_t tlay2_boot_mode() {
	return 0;
}

uint8_t process_03(void) {
	uint8_t *buff = tlay2_get_data();
	if (buff[2] != 0x03)
		return 0;
	switch (buff[3]) {
	case 0x00: {
		switch(buff[4])
		{
		case 0x00:
			ADMUX = 1;
			break;
		case 0x01:
			ADMUX = 2;
			break;
		case 0x02:
			ADMUX = 3;
			break;
		default:
		case 0x03:
			ADMUX = 0xe;
			break;
		}
		ADCSRA = adcsra_common | (1 << ADSC);
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	}
	case 0x01: {
		tlay2_tx_init_reply();
		tlay2_tx_byte(!!(ADCSRA & (1<<ADIF)));
		tlay2_tx_end();
		ADCSRA = adcsra_common | (1<<ADIF);
		break;
	}
	case 0x02: {
		tlay2_tx_init_reply();
		tlay2_tx_u16(ADC);
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

	ADMUX = 0;
	PORTC = 0x00;
	ADCSRA = adcsra_common;
	ADCSRB = 0;
	DIDR0 = (1 << ADC1D) | (1 << ADC2D) | (1 << ADC3D);

	tlay2_init();
	for (;;) {
		if (tlay2_checkslave()) {
			if (tlay2_process_ff()) {
			} else if (process_03()) {
			}
			tlay2_reset();
		}
	}
	return 0;
}
