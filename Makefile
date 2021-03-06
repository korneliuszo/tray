
.PHONY: all
.PHONY: tray0
.PHONY: tray1 bootloader1
.PHONY: tray2 bootloader2
.PHONY: tray3 bootloader3
.PHONY: tray4 bootloader4
.PHONY: bootloader5

all: tray0
all: tray1 bootloader1
all: tray2 bootloader2
all: tray3 bootloader3
all: tray4 bootloader4
all: bootloader5

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

tray3:
	$(MAKE) -C fw/tray3
	
bootloader3:
	$(MAKE) -C fw/bootloader CONFIG=tray3

tray4:
	$(MAKE) -C fw/tray4

bootloader4:
	$(MAKE) -C fw/bootloader CONFIG=tray4

bootloader5:
	$(MAKE) -C fw/bootloader CONFIG=tray5
