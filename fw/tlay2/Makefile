include $(CONFIG).mk

SRC = uart.c tlay2.c tlay2_ff.c

BUILDDIR = $(CONFIG)

COMPILE = avr-gcc -Wall -Os -g2 -DF_CPU=$(CLOCK) -mmcu=$(DEVICE) -include $(CONFIG).h -flto -I include/



.PHONY: all checkdirs

all: checkdirs $(BUILDDIR)/libtlay2.a

$(BUILDDIR)/libtlay2.a: $(addprefix $(BUILDDIR)/, $(SRC:.c=.o))
	avr-gcc-ar -c -r -s $@ $^

$(BUILDDIR)/%.o: %.c
	$(COMPILE) -c $< -o $@

checkdirs: $(BUILDDIR)

$(BUILDDIR):
	@mkdir -p $@

$(BUILDDIR)/%.d: %.c
	set -e; $(COMPILE) -MM $< \
	| sed 's,\(.*\)\.o[ :]*,$(BUILDDIR)/\1.o $(BUILDDIR)/\1.d : ,g' > $@; \
	[ -s $@ ] || rm -f $@


# Remove the '-' if you want to see the dependency files generated.
-include $(addprefix $(BUILDDIR)/, $(SRC:.c=.d))

