#!bin/sh

#xrdb -merge ~/.Xresources
#exec i3
#[ -f ~/.xprofile ] && ~/.xprofile &

# Set the background
feh --bg-scale ~/Pictures/background.jpg &

# Start a compositor for transparency
picom &

# start the notification daemon
dunst &

# Make matlab work when you spawn it
export _JAVA_AWT_WM_NONREPARENTING=1 # For matlab to work in dwm.

# Add scripts directory to path
[[ -d $HOME/scripts ]] && export PATH=$HOME/scripts:$PATH

# Do bar updates for dwm (thanks luke smith)
dwmbar &
# [ -f ~/.config/dwm/dwmbar ] && ~/.config/dwm/dwmbar &

while true; do
    dwm >/dev/null 2>&1
done
