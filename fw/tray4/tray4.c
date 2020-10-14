#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "tlay2.h"
#include "tlay2_ff.h"

uint8_t tlay2_boot_mode() {
	return 0;
}

uint8_t process_04(void) {
	uint8_t *buff = tlay2_get_data();
	if (buff[2] != 0x04)
		return 0;
	switch (buff[3]) {
	case 0x00: {
		SPDR = buff[8];
		while( ! bit_is_set( SPSR, SPIF ) );
		SPDR = buff[7];
		while( ! bit_is_set( SPSR, SPIF ) );
		SPDR = buff[6];
		while( ! bit_is_set( SPSR, SPIF ) );
		SPDR = buff[5];
		while( ! bit_is_set( SPSR, SPIF ) );
		switch (buff[4])
		{
		case 0x00:
		default:
			PORTB |= (1<<2);
			_delay_us(1);
			PORTB &= ~(1<<2);
			break;
		case 0x01:
			PORTB |= (1<<1);
			_delay_us(1);
			PORTB &= ~(1<<1);
			break;
		}
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	}
	case 0x01: {
		uint8_t ret;
		switch (buff[4])
		{
		case 0x00:
		default:
			ret = !(PIND&(1<<6));
			break;
		case 0x01:
			ret = !(PIND&(1<<5));
			break;
		}
		tlay2_tx_init_reply();
		tlay2_tx_byte(ret);
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

	DDRD &= ~((1<<5)|(1<<6));
	DDRB = (1<<1)|(1<<2)|(1<<3)|(1<<5);
	PORTB = 0x0;
	SPCR = ( 1 << SPE ) | (0<<DORD) | ( 1 << MSTR );
	SPSR = (0<< SPI2X);

	tlay2_init();
	for (;;) {
		if (tlay2_checkslave()) {
			if (tlay2_process_ff()) {
			} else if (process_04()) {
			}
			tlay2_reset();
		}
	}
	return 0;
}
