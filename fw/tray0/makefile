#
#             LUFA Library
#     Copyright (C) Dean Camera, 2019.
#
#  dean [at] fourwalledcubicle [dot] com
#           www.lufa-lib.org
#
# --------------------------------------
#         LUFA Project Makefile.
# --------------------------------------

# Run "make help" for target help.

MCU          = atmega32u4
ARCH         = AVR8
BOARD        = NONE
F_CPU        = 16000000
F_USB        = $(F_CPU)
OPTIMIZATION = s
TARGET       = tray0
SRC          = $(TARGET).c Descriptors.c $(LUFA_SRC_USB) 
LUFA_PATH    = ../lufa/LUFA
CC_FLAGS     = -DUSE_LUFA_CONFIG_HEADER -IConfig/ -flto -I../tlay2/include
LD_FLAGS     = -Os -flto -fuse-linker-plugin -g2
AVRDUDE_PROGRAMMER = avr109
AVRDUDE_PORT = /dev/serial/by-id/usb-Arduino_LLC_Arduino_Leonardo-if00

# Default target
all:

.PHONY: ../tlay2/tray0/libtlay2.a
../tlay2/tray0/libtlay2.a:
	cd ../tlay2 && make CONFIG=tray0

$(TARGET).elf: ../tlay2/tray0/libtlay2.a


program: all
	./enterbootloader.py
	sleep 4
	make avrdude

# Include LUFA-specific DMBS extension modules
DMBS_LUFA_PATH ?= $(LUFA_PATH)/Build/LUFA
include $(DMBS_LUFA_PATH)/lufa-sources.mk
include $(DMBS_LUFA_PATH)/lufa-gcc.mk

# Include common DMBS build system modules
DMBS_PATH      ?= $(LUFA_PATH)/Build/DMBS/DMBS
include $(DMBS_PATH)/core.mk
include $(DMBS_PATH)/cppcheck.mk
include $(DMBS_PATH)/doxygen.mk
include $(DMBS_PATH)/dfu.mk
include $(DMBS_PATH)/gcc.mk
include $(DMBS_PATH)/hid.mk
include $(DMBS_PATH)/avrdude.mk
include $(DMBS_PATH)/atprogram.mk
