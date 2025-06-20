#!/bin/bash

if pgrep -x waybar > /dev/null; then
    pkill waybar
    dunstify -a "Waybar" "Se ocultó"
else
    waybar &
    dunstify -a "Waybar" "Activada"
fi
