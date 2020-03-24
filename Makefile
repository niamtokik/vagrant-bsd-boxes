######################################################################
# GNU Makefile
######################################################################

.PHONY += all
OS = 	netbsd \
	openbsd \
	freebsd \
	hardenedbsd \
	dragonflybsd \
	minix \
	bsdrp

all:
	for i in $(OS); do \
		gmake -C $${i} all; done
