#!/bin/bash

pgrep -x mako || mako &

if pgrep -x waybar > /dev/null; then
    dunstify -a "Waybar" "🚫 Waybar disabledó" -t 100
    sleep 0.2  # Pequeña pausa para asegurar la notificación
    pkill waybar
else
    waybar &
    dunstify -a "Waybar" "✅ Waybar enabled" -i "waybar"
fi