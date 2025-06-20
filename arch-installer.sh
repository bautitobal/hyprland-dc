#!/usr/bin/env bash

# ==== Variables ====
DOTFILES_DIR=~/hyprland-dc
SCRIPTS_DIR="$DOTFILES_DIR/scripts"
SFX_DIR="$DOTFILES_DIR/sfx"
WALLPAPERS_DIR="$DOTFILES_DIR/wallpapers"
PACKAGES=(
    hyprland
    kitty
    waybar
    rofi
    swww
    dunst
    wl-clipboard
    papirus-icon-theme
    playerctl
    grim
    slurp
    ffmpeg
    python
    python-pip
    pipewire
    wireplumber
    pamixer
    unzip
)

# ==== Funciones ====

install_packages() {
    echo "[+] Instalando paquetes con pacman..."
    sudo pacman -Syu --noconfirm "${PACKAGES[@]}"
}

setup_dotfiles() {
    echo "[+] Creando estructura de dotfiles..."
    mkdir -p "$SCRIPTS_DIR" "$SFX_DIR" "$WALLPAPERS_DIR"
}

copy_configs() {
    echo "[+] Copiando archivos de configuración..."
    cp -r "$DOTFILES_DIR/bash/" /home/$USER/
    cp -r "$DOTFILES_DIR/btop" ~/.config/
    cp -r "$DOTFILES_DIR/dunst" ~/.config/
    cp -r "$DOTFILES_DIR/fastfetch" ~/.config/
    cp -r "$DOTFILES_DIR/gtk-3.0" ~/.config/
    cp -r "$DOTFILES_DIR/hypr" ~/.config/
    cp -r "$DOTFILES_DIR/kitty" ~/.config/
    cp -r "$DOTFILES_DIR/local/" /home/$USER/.local/
    cp -r "$DOTFILES_DIR/rofi" ~/.config/
    cp -r "$DOTFILES_DIR/waybar" ~/.config/
    cp -r "$DOTFILES_DIR/waypaper" ~/.config/
}

setup_audio() {
    echo "[+] Configurando audio..."
    systemctl --user enable --now pipewire pipewire-pulse wireplumber
}

install_python_reqs() {
    echo "[+] Instalando requerimientos de Python..."
    pip install --user -r "$DOTFILES_DIR/requirements.txt" 2>/dev/null || true
}

# ==== Ejecución ====
install_packages
setup_dotfiles
copy_configs
setup_audio
install_python_reqs

echo "[✓] Instalación del rice completada en Arch Linux."
