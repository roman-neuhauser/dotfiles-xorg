#!/usr/bin/env zsh

set -o nounset
set -o errexit

xset dpms 120 240 480
xmodmap $HOME/.xmodmap
xrdb -nocpp -merge $HOME/.Xresources
#xautolock -time 1 -locker "/usr/bin/slock" &
urxvtd -f -o -q
exec i3
