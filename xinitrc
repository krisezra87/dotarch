#!bin/sh

# Set the background
feh --bg-scale ~/Pictures/Background.jpg &

# This might set caps to escape without the hack-around
setxkbmap -option caps:escape

# Start a compositor for transparency
# picom --config /home/kezra/.config/picom.conf &
picom &

# start the notification daemon
dunst &
sxhkd &
unclutter &

# Make matlab work when you spawn it
export _JAVA_AWT_WM_NONREPARENTING=1 # For matlab to work in dwm.

# Add scripts directory to path
[[ -d $HOME/scripts ]] && export PATH=$HOME/scripts:$PATH

# Do bar updates for dwm (thanks luke smith)
[ -f ~/scripts/dwmbar ] && ~/scripts/dwmbar &

while true; do
    dwm >/dev/null 2>&1
done
