#!/bin/bash

# Verifica si Spotify está corriendo
if ! pgrep -x spotify > /dev/null; then
    echo "󰝛 No Music"
    exit
fi

status=$(playerctl --player=spotify status 2>/dev/null)

# Separación entre iconos
sep="   "

if [[ "$status" == "Playing" || "$status" == "Paused" ]]; then
    artist=$(playerctl --player=spotify metadata artist 2>/dev/null)
    title=$(playerctl --player=spotify metadata title 2>/dev/null)
    info="$artist - $title"
    echo "%{A:playerctl --player=spotify previous:}%{A}$sep%{A:playerctl --player=spotify play-pause:}$info%{A}$sep%{A:playerctl --player=spotify next:}%{A}"
else
    echo "󰝛 No Music"
fi