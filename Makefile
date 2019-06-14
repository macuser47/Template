.PHONY: install uninstall
USER = $(shell logname)

install:
	cp template /usr/local/bin
	mkdir -p ~/.template
	mkdir -p ~/.template/staging
	rm -f ~/.template/staging/*
	rm -rf ~/.template/template
	cp -r base_template ~/.template/template
	mkdir -p ~/.template/template/files
	chown -R $(USER):$(USER) ~/.template

uninstall:
	rm -f /usr/local/bin/template
