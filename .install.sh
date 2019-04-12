#!/bin/bash
shopt -s dotglob

# Get the directory of this file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
mkdir -p ~/.arch
mv $DIR/* ~/.arch/

ln -sf ~/.arch/config ~/.config
ln -sf ~/.arch/xinitrc ~/.xinitrc
ln -sf ~/.arch/Xresources ~/.Xresources
