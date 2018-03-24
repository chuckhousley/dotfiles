# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/home/chuck/.oh-my-zsh

ZSH_THEME="lambda-gitster"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git common-aliases zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

bindkey '^h' forward-word

# Path editing
# Dedup path in case multiple source commands screw it up
export PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"

alias python="python3.6"
alias glogme="glog --author=`git config user.name`"

function looper() {(
  TRAPINT() {}
  while sleep .5
  do
    echo \nrunning \"$@\"
    eval $@
  done
)}
