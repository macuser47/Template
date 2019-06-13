.PHONY: install uninstall

install:
	cp template /usr/local/bin
	mkdir -p ~/.template
	cp -r base_template ~/.template/template
	mkdir -p ~/.template/template/files

uninstall:
	rm -f /usr/local/bin/template
