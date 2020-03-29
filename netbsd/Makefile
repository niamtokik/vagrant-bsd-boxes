######################################################################
# GNU Makefile 
######################################################################
PROVIDERS ?= qemu.json \
	virtualbox.json
	
M4_OPTS ?=
M4_INCLUDE = -I../template/ -I../template/netbsd
M4_OPTS = $(M4_INCLUDE) $(M4_ARGS)

.PHONY += help
help:
	@echo "make [all|help|clean|PROVIDERS]"

.PHONY += all
all: qemu virtualbox

.PHONY += clean
clean:
	-rm *.json

.PHONY += qemu
qemu: qemu.json
	packer build $?

.PHONY += virtualbox
virtualbox: virtualbox.json
	packer build $?

$(PROVIDERS):
	m4 $(M4_OPTS) ../template/_default.m4 $@.m4 > $@
