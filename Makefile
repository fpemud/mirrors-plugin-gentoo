prefix=/usr

all:

clean:
	fixme

install:
	install -d -m 0755 "$(DESTDIR)/$(prefix)/lib64/mirrors/plugins"
	cp -r gentoo "$(DESTDIR)/$(prefix)/lib64/mirrors"
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/gentoo" -type f | xargs chmod 644
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/gentoo" -type d | xargs chmod 755
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/gentoo" -name "*.py" | xargs chmod 755

uninstall:
	rm -rf "$(DESTDIR)/$(prefix)/lib64/mirrors/gentoo"

.PHONY: all clean install uninstall
