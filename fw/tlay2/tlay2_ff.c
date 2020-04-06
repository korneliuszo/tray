#include "tlay2_ff.h"
#include "tlay2.h"

#include <avr/interrupt.h>
#include <avr/wdt.h>

static volatile uint16_t *const bootKeyPtr = (volatile uint16_t *)0x0800;

uint8_t tlay2_process_ff()
{
	uint8_t * buff = tlay2_get_data();
	uint8_t len = tlay2_get_len();
	if (buff[2]!= 0xff)
		return 0;
	switch (buff[3])
	{
	case 0x00:
		tlay2_tx_init_reply();
		for(uint8_t i=4; i < len; i++)
		{
			tlay2_tx_byte(buff[i]);
		}
		tlay2_tx_end();
		break;
	case 0x01:
		tlay2_set_addr(buff[4]);
		tlay2_tx_init_reply();
		tlay2_tx_end();
		break;
	case 0x02: //enter bootloader
		tlay2_tx_init_reply();
		tlay2_tx_end();
		//cli();
		*bootKeyPtr=0x7777;
		wdt_enable(WDTO_250MS);
		for (;;);
		break;
	case 0x03: //enter app
		tlay2_tx_init_reply();
		tlay2_tx_end();
		//cli();
		*bootKeyPtr=0xffff;
		wdt_enable(WDTO_250MS);
		for (;;);
		break;
	case 0x04:
		tlay2_tx_init_reply();
		tlay2_tx_byte(tlay2_boot_mode());
		tlay2_tx_end();
	default:
		break;
	}
	return 1;
}
