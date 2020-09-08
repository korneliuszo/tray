#!/bin/bash

avrdude -c usbasp -p m328 -U lfuse:w:0xff:m -B 1000
avrdude -c usbasp -p m328 -U hfuse:w:0xD0:m -B 1000
avrdude -c usbasp -p m328 -U efuse:w:0xff:m -B 1000
avrdude -c usbasp -p m328 -U flash:w:tray3/bootloader.elf 
