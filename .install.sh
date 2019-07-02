#!/bin/bash
echo "Running .arch installer..."

# Don't need detached head nonsense
git checkout master

shopt -s dotglob

# Get the directory of this file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Check if .arch exists, if it does move it
FLAG=true
if [ $DIR == ~/.arch ]; then
    echo ".arch is properly located"
    FLAG=false
else
    if [ -d ~/.arch ]; then
        mv ~/.arch ~/.arch.old
    fi
fi

# # Check if .config exists, if it does move it
# if [ -d ~/.config ]; then
#     mv ~/.config ~/.config.old
# fi

# Check if x stuff exists, if it does move it
if [ -f ~/.xinitrc ]; then
    mv ~/.xinitrc ~/.xinitrc.old
fi

if [ -f ~/.Xresources ]; then
    mv ~/.Xresources ~/.Xresources.old
fi

if $FLAG; then
    mkdir -p ~/.arch
    mv $DIR/* ~/.arch/
    rmdir $DIR
fi

ln -sf ~/.arch/config/i3 ~/.config/i3
ln -sf ~/.arch/xinitrc ~/.xinitrc
ln -sf ~/.arch/Xresources ~/.Xresources
ln -sf ~/.arch/xprofile ~/.xprofile
ln -sf ~/.arch/config/dwm ~/.config/dwm
