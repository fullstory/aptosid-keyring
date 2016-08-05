#!/usr/bin/make -f

all:
	gpg2 \
		--homedir $$(pwd)/.gnupg \
		--lock-never \
		--no-default-keyring \
		--keyring ./temp-keyring.kbx \
		--import *.asc
	gpg2 \
		--homedir $$(pwd)/.gnupg \
		--lock-never \
		--no-default-keyring \
		--keyring ./temp-keyring.kbx \
		--export >aptosid-archive-keyring.gpg
	gpgconf --kill gpg-agent
	$(RM) temp-keyring.kbx temp-keyring.kbx~
	$(RM) aptosid-archive-keyring.gpg~

install:

clean:
	$(RM) temp-keyring.kbx temp-keyring.kbx~
	$(RM) aptosid-archive-keyring.gpg
	$(RM) -r $$(pwd)/.gnupg

check:

test:

