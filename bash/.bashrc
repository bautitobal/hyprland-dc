# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export PATH="$HOME/.local/bin:$PATH"

export PATH=$PATH:/home/bauti/.spicetify

# FastFetch solo en la terminal principal de Kitty
if [ "$TERM" = "xterm-kitty" ] && [ -z "$SSH_CONNECTION" ] && [ ! -f /tmp/fastfetch-shown ]; then
    fastfetch
    touch /tmp/fastfetch-shown  # Crea un archivo bandera
fi

# Limpiar bandera al cerrar la terminal principal
cleanup() {
    rm -f /tmp/fastfetch-shown
}
trap cleanup EXIT
