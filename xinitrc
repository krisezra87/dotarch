#!bin/sh

#xrdb -merge ~/.Xresources
#exec i3
#[ -f ~/.xprofile ] && ~/.xprofile &

# Set the background
# feh --bg-scale ~/Pictures/background.jpg &
feh --bg-fill ~/Pictures/dark.png

# Start a compositor for transparency
picom --config /home/kezra/.config/picom.conf &

# start the notification daemon
dunst &

# Make matlab work when you spawn it
export _JAVA_AWT_WM_NONREPARENTING=1 # For matlab to work in dwm.

# Add scripts directory to path
[[ -d $HOME/scripts ]] && export PATH=$HOME/scripts:$PATH

# Do bar updates for dwm (thanks luke smith)
[ -f ~/scripts/dwmbar ] && ~/scripts/dwmbar &

while true; do
    dwm >/dev/null 2>&1
done
