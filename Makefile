#!/usr/bin/make -f

all:
	gpg --no-default-keyring --keyring ./aptosid-archive-keyring.gpg --import 0xE3BD538B.asc
	$(RM) aptosid-archive-keyring.gpg~

install:

clean:
	$(RM) aptosid-archive-keyring.gpg

check:

test:

