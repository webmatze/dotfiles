#!/bin/sh

# zsh configuration
## make history large
HISTFILE=~/.zsh_history
HISTSIZE=1000000   # the number of items for the internal history list
SAVEHIST=1000000   # maximum number of items for the history file
HIST_STAMPS="dd.mm.yyyy"
setopt appendhistory

## some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments

## beeping is annoying
unsetopt BEEP

## set prompt
PROMPT="%n@%m %1~ %# "

# other configurations
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"   # load lvim binary

# java
export JAVA_HOME=`/usr/libexec/java_home`

# gpg / git
export GPG_TTY=$(tty)

## rbenv
# eval "$(rbenv init -)"

## asdf
. /usr/local/opt/asdf/libexec/asdf.sh

## MySQL
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.6/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.6/include"

## SSH
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_ed25519

# export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# aliases
alias dcr='docker compose run --rm'

# START: autoload .env files
# source: (https://github.com/johnhamelink/env-zsh/blob/master/env.plugin.zsh)
autoload -U add-zsh-hook
load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -f .env && -r .env ]]; then
       source .env
     fi
}

load-local-conf
add-zsh-hook chpwd load-local-conf
# END: autoload .env files






export PATH="/usr/local/opt/mysql-client/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
