#!bin/sh

#xrdb -merge ~/.Xresources
#exec i3

feh --bg-scale ~/Pictures/background.jpg &
compton &

export _JAVA_AWT_WM_NONREPARENTING=1 # For matlab to work in dwm.

while true; do
    dwm >/dev/null 2>&1
done
