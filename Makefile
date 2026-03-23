CONFIG_DIR=$(HOME)/.config/helix

helix-link:
	mkdir -p $(CONFIG_DIR)

	# Config principal
	ln -sf $(PWD)/helix/config.toml $(CONFIG_DIR)/config.toml

	# Languages (merge manual simples)
	cat helix/languages/*.toml > $(CONFIG_DIR)/languages.toml

	# Tema
	mkdir -p $(CONFIG_DIR)/themes
	ln -sf $(PWD)/helix/themes/custom.toml $(CONFIG_DIR)/themes/custom.toml

clean:
	rm -rf $(CONFIG_DIR)