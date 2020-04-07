
#include "uart1.h"
#include "fifo.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/atomic.h>

DEFINE_STATIC_FIFO(rx1_fifo,128);
DEFINE_STATIC_FIFO(tx1_fifo,128);

void uart1_init()
{
	PORTD |= (1 << 2);
	UCSR1A = 0;
	UCSR1B = (1 << RXEN1) | (1 << TXEN1)| (1 << RXCIE1)| (1 << UDRIE1);
	UCSR1C= (1 << UCSZ11)| (1 << UCSZ10);
#define BAUD 9600
#include <util/setbaud.h>
	UBRR1H = UBRRH_VALUE;
	UBRR1L = UBRRL_VALUE;
	#if USE_2X
	UCSR1A |= (1 << U2X1);
	#else
	UCSR1A &= ~(1 << U2X1);
	#endif
}

intptr_t uart1_get_byte(uint8_t *byte)
{
	intptr_t ret;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
    	ret=fifo_get(&rx1_fifo,byte);
    }
	return ret;
}

intptr_t uart1_send_byte(uint8_t byte)
{
	intptr_t ret;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
	{
    	ret = fifo_put(&tx1_fifo, byte);
		UCSR1B |= (1 << UDRIE1);
	}
	return ret;
}

ISR(USART1_RX_vect)
{
	uint8_t c;
	c = UDR1;
	fifo_put(&rx1_fifo,c);
}

ISR(USART1_UDRE_vect)
{
	uint8_t c;
	if (fifo_get(&tx1_fifo,&c))
	{
		UDR1 = c;
	}
	else
	{
		UCSR1B &= ~(1 << UDRIE1);
	}
}
