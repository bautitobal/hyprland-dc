#!/bin/bash

#HELPER_FILE="$HOME/.config/hypr/scripts/keys.txt"
HELPER_FILE="$HOME/hyprland-dc/scripts/keys.txt"
# Verifica si el archivo de ayuda existe
if [ ! -f "$HELPER_FILE" ]; then
    echo "El archivo de ayuda no existe: $HELPER_FILE"
    exit 1
fi
# Verifica si YAD está instalado
if ! command -v yad &> /dev/null; then
    echo "YAD no está instalado. Por favor, instálalo para mostrar la ayuda."
    exit 1
fi

# Mostrar con YAD como overlay transparente
yad --text-info \
    --title="🚀 Ayuda de Atajos Hyprland" \
    --filename="$HELPER_FILE" \
    --fontname="JetBrains Mono 12" \
    --geometry=800x600 \
    --center \
    --no-buttons \
    --undecorated \
    --on-top \
    --skip-taskbar \
    --borders=0 \
    --window-icon=help \
    --close-on-unfocus \
    --mouse \
    --sticky \
    --fore="#FFFFFF" --back="#00000000" \
    --opacity=85 &
