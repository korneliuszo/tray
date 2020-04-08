#include "pps.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/atomic.h>

#define OCR_VAL ((F_CPU/160) - 1)

static volatile uint16_t pps_last_meas;
static volatile uint16_t pps_diff;
static volatile uint8_t pps_new;

void pps_init() {
	OCR1A = OCR_VAL;
	TCCR1A = 0;
	TCCR1B = (1 << ICES1) | (1 << WGM12) | (1 << CS10);
	TIMSK |= (1 << TICIE1);
}

ISR( TIMER1_CAPT_vect) {
	uint16_t capt = ICR1;
	uint16_t last_meas = pps_last_meas;
	int16_t diff = capt - last_meas;
	if (diff < -OCR_VAL / 2)
		diff += OCR_VAL;
	if (diff > OCR_VAL / 2)
		diff -= OCR_VAL;
	pps_diff = diff;
	pps_new = 1;
	pps_last_meas = capt;
}

uint8_t pps_get_meas(int16_t *diff) {
	uint8_t ret;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
	{
		ret = pps_new;
		if (ret) {
			*diff = pps_diff;
			pps_new = 0;
		}
	}
	return ret;
}
