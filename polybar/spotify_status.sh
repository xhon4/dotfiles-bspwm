#!/bin/bash

PLAYER="spotify"
MAXLEN=40

# Verificar si Spotify está corriendo utilizando el nombre exacto del proceso
status=$(playerctl --list-all | grep -i "spotify" | head -n 1)

# Si no encontramos una instancia de Spotify, mostrar "No Music"
if [ -z "$status" ]; then
    echo "󰝛 No Music"
    exit
fi

# Verificar si el estado de Spotify es 'Playing' o 'Paused'
status=$(playerctl --player=spotify status 2>/dev/null)

if [ "$status" != "Playing" ] && [ "$status" != "Paused" ]; then
    echo "󰝛 No Music"
    exit
fi

# Obtener título y artista desde Spotify
title=$(playerctl --player=spotify metadata title 2>/dev/null)
artist=$(playerctl --player=spotify metadata artist 2>/dev/null)

# Verificar que se obtuvo título y artista
if [ -z "$title" ] || [ -z "$artist" ]; then
    echo "󰝛 No Music"
    exit
fi

# Unir título y artista y recortar si es muy largo
full="$artist - $title"
if [ ${#full} -gt $MAXLEN ]; then
    full="${full:0:$MAXLEN}..."
fi

# Iconos para el estado del reproductor (solo prev y next)
prev=""
next=""

# Salida con los iconos y la información de la canción
echo "%{T2}$prev%{T-}  $full  %{T2}$next%{T-}"
