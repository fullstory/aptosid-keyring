#!/usr/bin/make -f

all:
	gpg2 \
		--lock-never \
		--no-default-keyring \
		--keyring ./temp-keyring.kbx \
		--import *.asc
	gpg2 \
		--lock-never \
		--no-default-keyring \
		--keyring ./temp-keyring.kbx \
		--export >aptosid-archive-keyring.gpg
	$(RM) temp-keyring.kbx temp-keyring.kbx~
	$(RM) aptosid-archive-keyring.gpg~

install:

clean:
	$(RM) temp-keyring.kbx temp-keyring.kbx~
	$(RM) aptosid-archive-keyring.gpg

check:

test:

