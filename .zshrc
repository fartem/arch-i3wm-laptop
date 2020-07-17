export ZSH="/usr/share/zsh/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/fartem/.sdkman"
[[ -s "/home/fartem/.sdkman/bin/sdkman-init.sh" ]] && source "/home/fartem/.sdkman/bin/sdkman-init.sh"

export SCRIPTS_DIR="/home/fartem/.scripts"

alias pclear="sudo pacman -Rns \$(pacman -Qtdq)"

[ -n "$XTERM_VERSION" ] && transset-df -a 0.9 --id "$WINDOWID" >/dev/null

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 && $(tty) == "/dev/tty1" ]]; then
	exec startx
fi

export PATH=$PATH:/home/fartem/Development/flutter/bin

