#!/bin/bash
temp=$(sensors | grep 'Tctl' | awk '{print $2}' | sed 's/+//;s/°C//')
printf "%.0f°C" "$temp"