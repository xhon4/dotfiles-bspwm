#!/bin/bash

bspc subscribe node_state | while read -r line; do
    if echo "$line" | grep -q "fullscreen true"; then
        polybar-msg cmd hide
    elif echo "$line" | grep -q "fullscreen false"; then
        polybar-msg cmd show
    fi
done
