PATH=$PATH:${HOME}/.local/bin/
[ "$(tty)" = "/dev/tty1" ] && exec sway
