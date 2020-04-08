#ifndef TRAY1_PPS_H
#define TRAY1_PPS_H

#include <stdint.h>

void pps_init(void);

uint8_t pps_get_meas(int16_t * diff);

#endif
