export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/rc"
export COLIMA_HOME="$XDG_CONFIG_HOME/colima"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

eval "$(/opt/homebrew/bin/brew shellenv)"
