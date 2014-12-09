BINDIR=/usr/local/bin

install:
	@# test whether unicode works
	@python3 -c 'print("testing utf-8:"); print("\n\u250c\u2500\u2510\n\u2502\u2713\u2502\n\u2514\u2500\u2518\n")' || echo "try setting/configuring a UTF-8 locale"
	install tmuxchooser $(BINDIR)
	install coop $(BINDIR)
	@echo "You'll need a user 'coop', and this entry in your sudoers file:"
	@echo "%coop ALL=(coop) NOPASSWD: $(BINDIR)/tmuxchooser"

uninstall:
	rm $(BINDIR)/tmuxchooser
	rm $(BINDIR)/coop

.PHONY: install uninstall
