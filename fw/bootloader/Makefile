include $(CONFIG).mk

SRC = bootloader.c

BUILDDIR = $(CONFIG)

COMPILE = avr-gcc -Wall -Os -g2 -DF_CPU=$(CLOCK) -mmcu=$(DEVICE) -include $(CONFIG).h -flto -I include/ -I../tlay2/include
LINK = avr-gcc -Wall -Os -g2 -mmcu=$(DEVICE) -Wl,-section-start=.text=$(BOOTADDR) -flto -fuse-linker-plugin

.PHONY: all checkdirs

all: checkdirs $(BUILDDIR)/bootloader.elf

$(BUILDDIR)/bootloader.elf: $(addprefix $(BUILDDIR)/, $(SRC:.c=.o)) ../tlay2/$(CONFIG)/libtlay2.a
	$(LINK) -o $@ $^

$(BUILDDIR)/%.o: %.c
	$(COMPILE) -c $< -o $@

.PHONY: ../tlay2/$(CONFIG)/libtlay2.a
../tlay2/$(CONFIG)/libtlay2.a:
	cd ../tlay2 && make CONFIG=$(CONFIG)

checkdirs: $(BUILDDIR)

$(BUILDDIR):
	@mkdir -p $@

$(BUILDDIR)/%.d: %.c
	set -e; $(COMPILE) -MM $< \
	| sed 's,\(.*\)\.o[ :]*,$(BUILDDIR)/\1.o $(BUILDDIR)/\1.d : ,g' > $@; \
	[ -s $@ ] || rm -f $@


# Remove the '-' if you want to see the dependency files generated.
-include $(addprefix $(BUILDDIR)/, $(SRC:.c=.d))

