#!/bin/bash

avrdude -c usbasp -p m328p -U lfuse:w:0xff:m -B 1000
avrdude -c usbasp -p m328p -U hfuse:w:0xD0:m -B 1000
avrdude -c usbasp -p m328p -U efuse:w:0xff:m -B 1000
avrdude -c usbasp -p m328p -U flash:w:tray4/bootloader.elf 
