######################################################################
# GNU Makefile 
######################################################################

.PHONY += all
all:
	echo wip

.PHONY += openbsd-current
openbsd-current:
	cd current; \
	packer build vagrant-default.json

.PHONY += openbsd-6.6
openbsd-6.6:
	cd 6.6; \
	packer build vagrant-default.json



