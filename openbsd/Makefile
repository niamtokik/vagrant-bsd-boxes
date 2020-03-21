######################################################################
# GNU Makefile 
######################################################################

.PHONY += all
all: openbsd-current openbsd-6.6

.PHONY += openbsd-current
openbsd-current:
	packer build -var release=snapshots \
		-var installer=install66.iso \
		-var checksum=$(CHECKSUM) \
		packer.json

.PHONY += openbsd-6.6
openbsd-6.6:
	packer build -var release=6.6 \
		-var installer=install66.iso \
		-var checksum=b22e63df56e6266de6bbeed8e9be0fbe9ee2291551c5bc03f3cc2e4ab9436ee3 \
		packer.json

.PHONY += openbsd-6.5
openbsd-6.5:
	packer build -var release=6.5 \
		-var installer=install65.iso \
		-var checksum=38d1f8cadd502f1c27bf05c5abde6cc505dd28f3f34f8a941048ff9a54f9f608\
		packer.json
