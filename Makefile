PREFIX ?= ~/.local
INSTALL_DIR ?= $(PREFIX)/bin/cppforge

install:
	@echo "Installing files to $(INSTALL_DIR)"
	install -Dm755 cppforge $(INSTALL_DIR)

uninstall:
	rm -f $(INSTALL_DIR)
