#!/bin/bash

#avrdude -c usbasp -p m328p -U lfuse:w:0xe0:m 
#avrdude -c usbasp -p m328p -U hfuse:w:0xD0:m
#avrdude -c usbasp -p m328p -U efuse:w:0xff:m
avrdude -c usbasp -p m328p -U flash:w:tray2/bootloader.elf 
