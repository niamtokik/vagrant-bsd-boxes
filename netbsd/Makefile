######################################################################
# GNU Makefile 
######################################################################
PROVIDERS ?= qemu.json \
	virtualbox.json \
	hyperv.json \
	libvirt.json
	
M4_INCLUDE = -I../template/ -I../template/netbsd
M4_OPTS = $(M4_INCLUDE)

.PHONY += all
all: qemu virtualbox hyperv libvirt

.PHONY += qemu
qemu: qemu.json
	packer build $?

.PHONY += virtualbox
virtualbox: virtualbox.json
	packer build $?

$(PROVIDERS):
	m4 $(M4_OPTS) -o $@ ../template/_default.m4 $@.m4
