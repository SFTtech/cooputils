BINDIR=/usr/local/bin

install:
	install tmuxchooser $(BINDIR)
	install coop $(BINDIR)

uninstall:
	rm $(BINDIR)/tmuxchooser
	rm $(BINDIR)/coop

.PHONY: install uninstall
