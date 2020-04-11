SYSTEM_BIN="`systemd-path user-binaries`"

build:
	touch texi
	printf "#!" > texi
	which ruby >> texi
	cat src/requires.rb >> texi
	cat src/colors.rb >> texi
	cat src/fit_text.rb >> texi
	cat src/imager.rb >> texi
	cat src/config.rb >> texi
	cat main.rb >> texi
	chmod +x texi

install:
	mkdir -p $(SYSTEM_BIN)
	cp texi $(SYSTEM_BIN)