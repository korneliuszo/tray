#include "register.h"

#include <avr/io.h>
#include <avr/interrupt.h>

static volatile uint16_t cnt;

void register_init(void)
{
	DDRD = 0;
	TCCR0A = 0;
	TCCR0B = (1 << CS02) | (1 << CS01);
	TIMSK0 = (1 << TOIE0);
}

ISR(TIMER0_OVF_vect)
{
	cnt++;
}

uint32_t register_get()
{
	uint32_t ret=0;
	if(PIND & (1<<3))
		ret |= (1<<0);
	if(PIND & (1<<2))
		ret |= (1<<1);
	if(PIND & (1<<5))
		ret |= (1<<2);
	if(PIND & (1<<6))
		ret |= (1<<3);
	if(PIND & (1<<7))
		ret |= (1<<4);
	if(PINB & (1<<2))
		ret |= (1<<5);
	if(PINB & (1<<3))
		ret |= (1<<6);
	if(PINB & (1<<0))
		ret |= (1<<7);
	if(PIND & (1<<4))
		ret |= (1<<8);
	ret |= ((uint32_t)TCNT0<<9);
	ret |= ((uint32_t)cnt<<(9+8));
	return ret;
}
