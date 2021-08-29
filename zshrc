export ZSH="/Users/ccsinger/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

prompt_context() {
  prompt_segment black default "%(!.%{%F{yellow}%}.)singer"
}

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/dev-config/scripts:$PATH"

# Ruby settings
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# Java settings
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

# Javascript settings
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Compilation flags
export ARCHFLAGS="-arch x86_64"

alias e="mvim"
alias ez="e ~/.zshrc"
alias sz="source ~/.zshrc"
alias ll="ls -alh"

# ZSH bindings
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# General aliases
alias paux="ps aux | grep "

# Git aliases
alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gco="git checkout"
alias gcw="git add -A && git commit -m wip"
alias gcm="git commit -m"
alias gca="git add -A && git commit --amend --no-edit"
alias gp='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias gcb="git checkout -b"
alias gl="git log"
alias glg="git log --graph --decorate --oneline"
alias glc="git ls-files -- . ':!:*.md' ':!:*ignore' ':!:*.pem' ':!:*.lock' | xargs wc -l"
alias gpp="git pull --prune --ff-only"
alias gb="git branch -va"

# Docker aliases
alias dc="docker-compose"
alias dcb="dc build"
alias dcu="dc up"
alias dcub="dc up --build"
alias dcd="dc down"
alias dcr="dc run --rm"

docker-ip() {
  docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}

# Bridge ENV
# Lighthouse
