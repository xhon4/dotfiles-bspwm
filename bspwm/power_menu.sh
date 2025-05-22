#!/bin/bash
# PowerMenu para BSPWM con Rofi usando Font Awesome + texto

# Opciones con iconos de Font Awesome + texto
options="󰍁 Lock
 Suspend
󰗽 Logout
󰜉 Reboot
󰐥 Shutdown"


# Función para lanzar Rofi
rofi_cmd() {
    rofi -dmenu \
        -p "Goodbye ${USER}" \
        -mesg "Uptime: $(uptime -p | sed -e 's/up //g')" \
        -theme "$HOME/.config/rofi/PowerMenu.rasi"
}

# Mostrar menú
chosen=$(printf "%s\n" "$options" | rofi_cmd)

# Ejecutar acción según selección
case $chosen in
    " Shutdown") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    " Lock") betterlockscreen -l ;;
    " Suspend") systemctl suspend ;;
    " Logout") bspc quit ;;
esac
