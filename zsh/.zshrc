export EDITOR="nvim"

alias ls="gls --group-directories-first --color"
alias vim="nvim"

autoload -U compinit; compinit -d $XDG_CACHE_HOME/zsh/compdump

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '[%b]'

setopt PROMPT_SUBST
PROMPT='%F{blue}[%2~]%f%F{red}${vcs_info_msg_0_}%f $ '
