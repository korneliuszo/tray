#ifndef TRAY2_MEASURE_H
#define TRAY2_MEASURE_H

#include <stdint.h>

void measure_init(void);
void measure_start(void);
uint8_t measure_complete(void);
void measure_set_channel(uint8_t channel);

#endif
