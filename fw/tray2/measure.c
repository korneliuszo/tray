#include "measure.h"

#include <avr/io.h>
#include <avr/interrupt.h>

#define LOOP_VAL 160
#define OCR_VAL ((F_CPU/LOOP_VAL) - 1)

static volatile uint8_t loop;
static volatile uint8_t complete;

void measure_init(void) {
	DDRB = (1 << 1) | (1 << 4) | (1 << 5);
	ICR1 = OCR_VAL;
	OCR1A = OCR_VAL / 2;
	TCCR1A = (1 << COM1A1);
	TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS10);
}
void measure_start(void) {
	loop = 0;
	TIMSK1 = (1 << OCIE1A);
}

ISR( TIMER1_COMPA_vect) {
	uint8_t loopval = loop;
	if (loopval == 0) {
		TCCR1A = (1 << COM1A1) | (1 << COM1A0);
	}
	if (loopval == LOOP_VAL) {
		TCCR1A = (1 << COM1A1);

	}
	if (loopval == LOOP_VAL + 1) {
		TIMSK1 = 0;
		complete = 1;
	}
	loop++;
}
uint8_t measure_complete(void) {
	if (!complete)
		return 0;
	complete = 0;
	return 1;
}
void measure_set_channel(uint8_t channel) {
	switch (channel) {
	case 0:
	default:
		PORTB &= ~(1 << 4);
		PORTB &= ~(1 << 5);
		break;
	case 1:
		PORTB |= (1 << 4);
		PORTB &= ~(1 << 5);
		break;
	case 2:
		PORTB &= ~(1 << 4);
		PORTB |= (1 << 5);
		break;
	}
}
