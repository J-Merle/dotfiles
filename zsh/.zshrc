export MANPAGER="less -R --use-color -Dd+r -Du+b"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export HISTFILE="$HOME/.config/zsh/histfile"
export HISTSIZE=1000000000
export SAVEHIST=1000000000
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS      # don't record a command run twice in a row
setopt HIST_IGNORE_ALL_DUPS  # remove older duplicate entries
setopt HIST_IGNORE_SPACE     # don't record commands starting with a space
setopt HIST_REDUCE_BLANKS    # clean up whitespace
setopt SHARE_HISTORY         # share history across terminals in real time

setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lycos/.zshrc'

# Git
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' use-simple false
zstyle ':vcs_info:git:*' formats ' %F{red}{%b}%F{yellow}%u%f'
zstyle ':vcs_info:git:*' actionformats ' %F{red}{%b}[%a]%F{yellow}%u%f'
zstyle ':vcs_info:git:*' unstagedstr '✱'

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'l:|=* r:|=*'

autoload -Uz compinit vcs_info
compinit


# End of lines added by compinstall
setopt PROMPT_SUBST
precmd () { vcs_info }

# Custom
PS1='%F{blue}🠶 %F{cyan}%1d${vcs_info_msg_0_} %f'


[ -e $XDG_CONFIG_HOME/zsh/zsh-aliases ] && source $XDG_CONFIG_HOME/zsh/zsh-aliases
[ -e $XDG_CONFIG_HOME/zsh/zsh-work ] && source $XDG_CONFIG_HOME/zsh/zsh-work
