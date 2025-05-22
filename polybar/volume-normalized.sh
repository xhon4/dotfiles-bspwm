#!/bin/bash

volume=$(pamixer --get-volume)

if pamixer --get-mute | grep -q true; then
  echo " Muted"
else
  echo " ${volume}%"
fi
