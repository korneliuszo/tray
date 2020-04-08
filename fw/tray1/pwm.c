#include "pwm.h"
#include <avr/io.h>

void pwm_init()
{
	ICR3 = 0xffff;
	TCCR3A = (1 << COM3A1) | (1 << WGM31);
	TCCR3B = (1 << CS30) | (1 << WGM32) | (1 << WGM33);
	OCR3A = 0x7fff;
	DDRE |= (1 << 3);
}

void pwm_set(uint16_t pwm)
{
	OCR3A = pwm;
}
