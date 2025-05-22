#!/bin/bash
if ping -q -c 1 -W 1 8.8.8.8 > /dev/null; then
  if [ -n "$(iwgetid -r)" ]; then
    echo "Wi-Fi: $(iwgetid -r)"
  elif [ -n "$(ip link show | grep 'state UP' | grep 'enp')" ]; then
    echo "Ethernet"
  else
    echo "Conectado"
  fi
else
  echo "Desconectado"
fi