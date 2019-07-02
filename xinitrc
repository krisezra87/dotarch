#!bin/sh

#xrdb -merge ~/.Xresources
#exec i3
[ -f ~/.xprofile ] && ~/.xprofile

while true; do
    dwm >/dev/null 2>&1
done
