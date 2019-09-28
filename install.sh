#!/bin/bash
echo "Running Arch config installer..."

# Don't need detached head nonsense if using submodules
git checkout master

shopt -s dotglob

# Get the directory of this file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Check if the .bash folder already exists, if it does, move it.
FLAG=true
if [ $DIR == ~/.arch ]; then
    echo ".arch is properly located"
    FLAG=false
else
    if [ -d ~/.arch ]; then
        mv ~/.arch ~/.arch.old
    fi
fi

if $FLAG; then
    mkdir -p ~/.arch
    mv $DIR/* ~/.arch/
    cd ~
    rmdir $DIR
fi

~/.arch/configureArch.sh
