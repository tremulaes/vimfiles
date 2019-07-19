export ZSH="/Users/ccsinger/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:$PATH"

# Ruby settings
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

alias e="mvim"
alias ez="e ~/.zshrc"
alias sz="source ~/.zshrc"
alias ll="ls -al"

# ZSH bindings
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# General aliases
alias paux="ps aux | grep "

# Docker aliases
alias dc="docker-compose"
alias dcb="dc build"
alias dcu="dc up"
alias dcd="dc down"

# Ruby aliases
alias be="bundle exec"
alias ber="be rspec"

alias dc-rspec="dc run app rspec"
