#!/bin/sh
#
#~/.xinitrc
#

# Start sxhkd for keyboard shortcuts
sxhkd & 

# Start termite terminal
termite &

# Start lemonbar (change this once you have a script for it)
lemonbar &

# Set cursor
xsetroot -cursor_name bluecurve &

# Set background image
sh ~/.fehbg &

# Start bspwm window manager
exec bspwm 
