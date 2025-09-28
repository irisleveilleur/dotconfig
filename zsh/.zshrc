source $HOMEBREW_PREFIX/share/antigen/antigen.zsh

export EDITOR="hx"

export LESSHISTFILE="$XDG_STATE_HOME/less_history"
export HISTFILE="$XDG_STATE_HOME/zsh_history"

alias ls="gls --group-directories-first --color"

autoload -U compinit; compinit -d $XDG_CACHE_HOME/zsh/compdump

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[%b]'

setopt PROMPT_SUBST

PROMPT='%F{blue}[%~]%f%F{red}${vcs_info_msg_0_}%f $ '

antigen bundle jeffreytse/zsh-vi-mode
antigen apply
