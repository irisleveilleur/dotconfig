alias ls="gls --color --group-directories-first"

autoload -U compinit; compinit -d $XDG_CACHE_HOME/zsh/compdump

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[%b]'

setopt PROMPT_SUBST
PROMPT='%F{blue}[%~]%f%F{red}${vcs_info_msg_0_}%f $ '

export HISTFILE=$XDG_STATE_HOME/zsh/zsh_history
export GHCUP_USE_XDG_DIRS=1
export EDITOR="nvim"

[ -f "/Users/irisleveilleur/.local/share/ghcup/env" ] && . "/Users/irisleveilleur/.local/share/ghcup/env" # ghcup-env

eval "$(zoxide init zsh)"
