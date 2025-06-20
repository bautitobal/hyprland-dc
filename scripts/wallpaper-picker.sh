#!/bin/bash

WALLPAPER_DIR="$HOME/hyprland-dc/wallpapers"

# Asegurarse de que swww esté corriendo
pgrep -x swww > /dev/null || swww-daemon &

# Selector gráfico con preview
SELECTED=$(yad \
  --file \
  --title="Elegí un wallpaper" \
  --width=800 \
  --height=600 \
  --center \
  --filename="$WALLPAPER_DIR/" \
  --file-filter="Imágenes | *.png *.jpg *.jpeg *.gif *.webp")

# Si se seleccionó una imagen
if [[ -n "$SELECTED" ]]; then
    echo "Wallpaper seleccionado: $SELECTED"

    # Aplicar el fondo con transición suave
    swww img "$SELECTED" --transition-type any --transition-fps 60 --transition-duration 1

    # Notificación
    notify-send "Wallpaper cambiado" "Nuevo fondo: $(basename "$SELECTED")"
else
    echo "No se seleccionó ningún archivo."
fi
