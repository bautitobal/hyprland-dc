# 🌌 hyprland-dc

Bienvenido a **hyprland-dc**, mi configuración personalizada de Hyprland inspirada en una estética estilo **Detective Conan**: tonos azul oscuro, celeste, con pequeños detalles en rojo. El entorno está pensado para ser **funcional**, **minimalista**, y totalmente basado en **Wayland**.

> ⚠️ Requiere Hyprland + PipeWire + una distro moderna como Arch o Fedora.

## ✨ Características

- 💻 **Gestor de ventanas**: Hyprland (Wayland)
- 🎨 **Estética**: Inspiración en Detective Conan, colores sobrios y coherentes
- 🧰 **Launcher**: Rofi con tema personalizado
- 🎛️ **Barra de estado**: Waybar, minimalista y funcional
- 🔔 **Notificaciones**: Dunst con íconos y soporte para Spotify
- 🖼️ **Fondos de pantalla**: Integración con `swww` y selector gráfico
- 📸 **Screenshots**: Script `hyprshot.sh` (por ventana, región, pantalla completa)
- 🍅 **Pomodoro**: Temporizador con GUI en rofi + sonido + seguimiento por terminal
- 👀 **Descanso visual**: Script para descansos periódicos
- 💡 **Atajos en pantalla**: SUPER + H muestra menú con keybinds


---

## ⚙️ Instalación

Cloná el repositorio y ejecutá el instalador correspondiente a tu distro.

```bash
git clone https://github.com/bautitobal/hyprland-dc
cd ~/hyprland-dc
```

### 🐧 Fedora
```bash
chmod +x fedora-installer.sh
./fedora-installer.sh
```

### 🐧 Arch Linux
```bash
chmod +x arch-installer.sh
./arch-installer.sh
```

## ⌨️ Keybinds principales
# 🎛️ ATAJOS DE HYPERLAND - AYUDA RÁPIDA

| Categoría                  | Atajo                     | Acción                                   |
|----------------------------|---------------------------|------------------------------------------|
| 💻 APLICACIONES            | SUPER + Return            | Abrir terminal ($terminal)               |
|                            | SUPER + E                 | Abrir explorador de archivos ($fileManager) |
|                            | SUPER + B                 | Abrir navegador ($browser)               |
|                            | SUPER + N                 | Abrir editor ($editor)                   |
|                            | SUPER + D                 | Menú de aplicaciones ($menu)             |
| 📝 UTILIDADES Y SCRIPTS    | SUPER + Shift + P         | Captura de ventana activa                 |
|                            | SUPER + Print             | Captura de región                        |
|                            | SUPER + Shift + T         | Iniciar Pomodoro                         |
|                            | SUPER + Shift + X         | Mostrar/ocultar Waybar                   |
|                            | SUPER + H                 | Mostrar este menú de ayuda                |
| 🪟 GESTIÓN DE VENTANAS    | SUPER + Q                 | Cerrar ventana activa                     |
|                            | SUPER + Space             | Alternar flotante/tiling                 |
|                            | SUPER + F                 | Pantalla completa                        |
|                            | SUPER + M                 | Cerrar sesión (Hyprland exit)           |
|                            | SUPER + P                 | Pseudo-tile (modo dwindle)              |
|                            | SUPER + J                 | Alternar división (dwindle)              |
| 🔃 WORKSPACES              | SUPER + [1–0]             | Ir al workspace [1–10]                   |
|                            | SUPER + Shift + [1–0]     | Mover ventana al workspace [1–10]        |
|                            | SUPER + S                 | Alternar workspace mágico (scratchpad)   |
|                            | SUPER + Shift + S         | Mover ventana al scratchpad               |
| 🧭 NAVEGACIÓN DE FOCUS     | SUPER + ← / H             | Mover foco a la izquierda                |
|                            | SUPER + → / L             | Mover foco a la derecha                  |
|                            | SUPER + ↑ / K             | Mover foco arriba                        |
|                            | SUPER + ↓ / J             | Mover foco abajo                         |
| 🖱️ SCROLL DE WORKSPACES    | SUPER + scroll↑           | Workspace siguiente                       |
|                            | SUPER + scroll↓           | Workspace anterior                        |


## Requisitos
- hyprland
- kitty
- rofi
- waybar
- dunst
- swww
- slurp + grim + wl-clipboard
- pipewire
- python 3
- paplay (parte de pulseaudio-utils o pipewire)

## 💬 Créditos
Inspirado en la config de [NelloKudo](https://github.com/NelloKudo/hyprnord-dots).

## 🧪 Estado del proyecto
En desarrollo, pero usable y funcional. Ideal para usuarios intermedios a avanzados que buscan un entorno Wayland pulido y personalizable.

## 🤝 Contribución
Cualquier tipo de contribución al proyecto siempre serán más que bienvenidas. Seguramente me olvide de documentar o mejorar algo ya existente.

# ☕ Apoyo
¿Te gusta este proyecto y querés apoyar?
Podés:
- ⭐ Darle una estrella a este repositorio

- 📣 Compartirlo con otras personas

- 💬 Dar feedback para mejorarlo

#### Si querés apoyarme con un cafecito:

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-blue?logo=buy-me-a-coffee&style=flat-square)](https://www.buymeacoffee.com/bautitobal) [![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/bautitobal) [![Ko-Fi](https://img.shields.io/badge/Ko--fi-F16061?style=for-the-badge&logo=ko-fi&logoColor=white)](https://ko-fi.com/bautitobal)
