#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export PANEL_FIFO=/tmp/panel-fifo
export PATH=$PATH:~/.config/bspwm/panel/ 

# Bash prompt
PS1='\u@\h:\W# '

# Aliases
alias ls='ls --color=auto'
alias nvlc='nvlc --no-color'
alias wm='sudo wifi-menu'
alias pacman='sudo pacman'
alias bl='acpi'
alias SNAKE='python ~/Documents/python/Projects/Snake/Main.py'
alias xo='xdg-open'
