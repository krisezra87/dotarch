DOT_PATH:=$(HOME)/.arch
CONFIG_PATH:=$(HOME)/.config

all: x_files configs

github:
	@[[ -d $(DOT_PATH) ]] || git clone git@github.com:krisezra87/dotarch.git $(DOT_PATH)

configs:
	@# Note: the T flag prevents us from creating strange loops
	@echo "Linking configurations..."
	@# @ln -sTf $(DOT_PATH)/config/picom.conf $(CONFIG_PATH)/picom.conf
	@ln -sTf $(DOT_PATH)/config/zathura $(CONFIG_PATH)/zathura
	@ln -sTf $(DOT_PATH)/config/sxiv $(CONFIG_PATH)/sxiv
	@ln -sTf $(DOT_PATH)/config/sxhkd $(CONFIG_PATH)/sxhkd
	@ln -sTf $(DOT_PATH)/config/todoist $(CONFIG_PATH)/todoist

x_files:
	@echo "Linking X..."
	@ln -sTf $(DOT_PATH)/xinitrc $(HOME)/.xinitrc
	@# @ln -sTf $(DOT_PATH)/xprofile $(HOME)/.xprofile
	@# @ln -sTf $(DOT_PATH)/Xresources $(HOME)/.Xresources
