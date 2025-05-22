#!/bin/bash

# Suscribirse a los cambios de estado de las ventanas
bspc subscribe node_state | while read -r line; do
    case "$line" in
        *fullscreen\ true*)
            polybar-msg cmd hide
            ;;
        *fullscreen\ false*)
            polybar-msg cmd show
            ;;
    esac
done
