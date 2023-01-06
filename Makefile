DOT_PATH:=$(HOME)/.arch
CONFIG_PATH:=$(HOME)/.config

all: github arch

github:
	@[[ -d $(DOT_PATH) ]] || git clone git@github.com:krisezra87/dotarch.git $(DOT_PATH)

arch:
	@echo "Linking configurations for Arch..."
	@ln -sf $(DOT_PATH)/xinitrc $(HOME)/.xinitrc
	@ln -sf $(DOT_PATH)/xprofile $(HOME)/.xprofile
	@ln -sf $(DOT_PATH)/Xresources $(HOME)/.Xresources
	@ln -sf $(DOT_PATH)/config/picom.conf $(CONFIG_PATH)/picom.conf
	@ln -sf $(DOT_PATH)/config/qutebrowser $(CONFIG_PATH)/qutebrowser
	@ln -sf $(DOT_PATH)/config/zathura $(CONFIG_PATH)/zathura
	@ln -sf $(DOT_PATH)/config/sxiv $(CONFIG_PATH)/sxiv
	@ln -sf $(DOT_PATH)/config/vifm $(CONFIG_PATH)/vifm

test:
	echo $(DOT_PATH)
	echo $(CONFIG_PATH)
