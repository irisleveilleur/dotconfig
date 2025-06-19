alias ls="gls --color --group-directories-first"

autoload -U compinit; compinit -d $XDG_CACHE_HOME/zsh/compdump

export HISTFILE=$XDG_STATE_HOME/zsh/zsh_history
export GHCUP_USE_XDG_DIRS=1

[ -f "/Users/irisleveilleur/.local/share/ghcup/env" ] && . "/Users/irisleveilleur/.local/share/ghcup/env" # ghcup-env