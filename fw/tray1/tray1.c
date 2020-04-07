#include <avr/io.h>
#include <avr/interrupt.h>
#include "tlay2.h"
#include "tlay2_ff.h"

uint8_t tlay2_boot_mode() {
	return 0;
}

int main(void) {
	sei();
	tlay2_init();
	for (;;) {
		if (tlay2_checkslave()) {
			if (tlay2_process_ff()) {
			}
			tlay2_reset();
		}
	}
	return 0;
}
