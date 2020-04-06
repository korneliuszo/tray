#!/bin/bash

PORT=/dev/serial/by-id/usb-1a86_USB2.0-Serial-if00-port0
#avrdude -c jtag1 -p m128 -P $PORT -U lfuse:w:0xe0:m 
#avrdude -c jtag1 -p m128 -P $PORT -U hfuse:w:0x90:m
#avrdude -c jtag1 -p m128 -P $PORT -U efuse:w:0xff:m
avrdude -c jtag1 -p m128 -P $PORT -U flash:w:tray1/bootloader.elf 
