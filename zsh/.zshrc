# Lines configured by zsh-newuser-install
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lycos/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Custom
#autoload -Uz promptinit
#promptinit
PROMPT='%~ '

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export XDG_CONFIG_HOME="$HOME/.config"
export MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"
export VIMINIT="source $MYVIMRC"

d='.config/dircolors'
test -r $d && eval "$(dircolors $d)"

alias ls="ls --color"
alias ll="ls -lAh"
