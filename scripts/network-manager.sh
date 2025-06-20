#!/bin/bash

# Escanear redes disponibles
nmcli device wifi rescan &>/dev/null
sleep 1  # Esperar un segundo para que aparezcan

# Mostrar lista de SSIDs únicos
SSID=$(nmcli --fields SSID device wifi list | tail -n +2 | awk '!seen[$0]++' | rofi -dmenu -p "Selecciona una red WiFi")

# Si no se seleccionó nada, salir
[[ -z "$SSID" ]] && exit

# Verificar si requiere contraseña
SECURITY=$(nmcli -f SSID,SECURITY device wifi list | grep "$SSID" | awk '{print $NF}')

if [[ "$SECURITY" == "--" ]]; then
    # Red abierta
    nmcli device wifi connect "$SSID" && notify-send "Conexión WiFi" "Conectado a $SSID"
else
    # Red protegida, pedir contraseña
    PASSWORD=$(rofi -dmenu -password -p "Contraseña para $SSID")
    [[ -z "$PASSWORD" ]] && exit
    if nmcli device wifi connect "$SSID" password "$PASSWORD"; then
        notify-send "Conexión WiFi" "Conectado a $SSID"
    else
        notify-send "Conexión WiFi" "Error al conectar a $SSID" -u critical
    fi
fi
