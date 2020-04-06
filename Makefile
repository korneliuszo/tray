
.PHONY: all tray0 bootloader1

all: tray0 bootloader1

tray0:
	$(MAKE) -C fw/tray0
	
bootloader1:
	$(MAKE) -C fw/bootloader CONFIG=tray1	