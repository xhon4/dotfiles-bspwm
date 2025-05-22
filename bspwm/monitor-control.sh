#!/bin/bash

# Tiempo de inactividad para apagar la pantalla (en milisegundos)
IDLE_LIMIT=$((5 * 60 * 1000))  # 5 minutos

while true; do
  idle_time=$(xprintidle)
  media_status=$(playerctl status 2>/dev/null)

  if [ "$idle_time" -gt "$IDLE_LIMIT" ]; then
    if [ "$media_status" != "Playing" ]; then
      xset dpms force off
    fi
  fi

  sleep 30
done
