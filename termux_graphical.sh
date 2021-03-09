#!/bin/sh

#vncserver -kill :1
killall -q Xvnc
vncserver -localhost
#vncserver -list
export DISPLAY=":1"

# Tried achiving window transparency with the window compositor xcompmgr and did not work
#xcompmgr -c &

feh --bg-scale ~/data/termux/tokio.jpg

exec i3 &

# Tried to get image previews on ranger with w3m but obtained an error because the executable associated to $W3MINGDISPLAY_PATH was not found.
