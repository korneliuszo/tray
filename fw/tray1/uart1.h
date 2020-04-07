#ifndef TRAY1_UART1_H
#define TTRAY_UART1_H

#include <stdint.h>

void uart1_init(void);
intptr_t uart1_get_byte(uint8_t *byte);
intptr_t uart1_send_byte(uint8_t byte);

#endif
