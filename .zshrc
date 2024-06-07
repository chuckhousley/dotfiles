if command -v tmux>/dev/null; then
	[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux -2
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda-gitster"

zstyle ':omz:update' mode disabled  # disable automatic updates
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
bindkey '^h' forward-word

# node binding.gyp issue that python 3.11 had, still in 3.12? idk
# export NODE_GYP_FORCE_PYTHON=/opt/homebrew/bin/python3.11

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Path editing
# Dedup path in case multiple source commands screw it up
export PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias vim=nvim
eval "$(fzf --zsh)"
