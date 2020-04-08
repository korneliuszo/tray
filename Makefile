
.PHONY: all tray0 tray1 bootloader1 tray2 bootloader2

all: tray0 tray1 bootloader1 tray2 bootloader2

tray0:
	$(MAKE) -C fw/tray0
	
tray1:
	$(MAKE) -C fw/tray1
	
bootloader1:
	$(MAKE) -C fw/bootloader CONFIG=tray1

tray2:
	$(MAKE) -C fw/tray2
	
bootloader2:
	$(MAKE) -C fw/bootloader CONFIG=tray2