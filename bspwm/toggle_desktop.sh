# ~/.config/bspwm/toggle_show_desktop.sh
#!/bin/bash

state_file="/tmp/bspwm_hidden_state"

if [ -f "$state_file" ]; then
    # Restaurar las ventanas
    while read -r wid; do
        bspc node "$wid" --flag hidden=off
    done < "$state_file"
    rm "$state_file"
else
    # Guardar el estado actual
    bspc query -N -d focused -n .window > "$state_file"
    while read -r wid; do
        bspc node "$wid" --flag hidden=on
    done < "$state_file"
fi
