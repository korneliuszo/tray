
.PHONY: all tray0 tray1 bootloader1

all: tray0 tray1 bootloader1

tray0:
	$(MAKE) -C fw/tray0
	
tray1:
	$(MAKE) -C fw/tray1
	
bootloader1:
	$(MAKE) -C fw/bootloader CONFIG=tray1