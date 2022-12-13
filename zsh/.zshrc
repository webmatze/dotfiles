#!/bin/sh

# START: zsh configuration
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

## completion
autoload -U compinit; compinit
_comp_options+=(globdots) # complete hidden files

## set prompt
# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red  
PROMPT='%F{green}\$%f %F{blue}%~%f %F{yellow}${vcs_info_msg_0_}%f %$ '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# END: zsh configuration

# other configurations
## rbenv
# eval "$(rbenv init -)"

## asdf
. /usr/local/opt/asdf/libexec/asdf.sh

## SSH
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_ed25519

# export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# START: aliases
alias dcr='docker compose run --rm'
if command -v nvim &> /dev/null; then
    alias vim='nvim'
fi
if command -v bat &> /dev/null; then
    alias cat='bat -pp --theme=Dracula '
    alias less='bat --theme=Dracula '
fi
# END: aliases

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

# initialize fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
