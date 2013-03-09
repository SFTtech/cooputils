BINDIR=/usr/local/bin

install:
	install tmuxchooser $(BINDIR)
	install coop $(BINDIR)
	@echo "You'll need a user 'coop', and this entry in your sudoers file:"
	@echo "%coop ALL=(coop) NOPASSWD: $(BINDIR)/tmuxchooser"

uninstall:
	rm $(BINDIR)/tmuxchooser
	rm $(BINDIR)/coop

.PHONY: install uninstall
