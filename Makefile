#!/usr/bin/make -f

all:
	gpg --no-default-keyring --keyring ./aptosid-archive-keyring.gpg --import 0xE3BD538B.asc
	gpg --no-default-keyring --keyring ./aptosid-archive-keyring.gpg --import 0xB1D142ED.asc
	$(RM) aptosid-archive-keyring.gpg~

install:

clean:
	$(RM) aptosid-archive-keyring.gpg

check:

test:

