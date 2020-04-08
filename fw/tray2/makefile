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

MCU          = atmega328p
ARCH         = AVR8
BOARD        = NONE
F_CPU        = 10000000
F_USB        = $(F_CPU)
OPTIMIZATION = s
TARGET       = tray2
SRC          = $(TARGET).c register.c measure.c
LUFA_PATH    = ../lufa/LUFA
CC_FLAGS     = -flto -I../tlay2/include
LD_FLAGS     = -Os -flto -fuse-linker-plugin -g2

# Default target
all:

.PHONY: ../tlay2/tray2/libtlay2.a
../tlay2/tray2/libtlay2.a:
	cd ../tlay2 && make CONFIG=tray2

$(TARGET).elf: ../tlay2/tray2/libtlay2.a


program: all
	../../tools/program.py -i 2 $(TARGET).bin

# Include LUFA-specific DMBS extension modules
DMBS_LUFA_PATH ?= $(LUFA_PATH)/Build/LUFA

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
