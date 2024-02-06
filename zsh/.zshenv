## set config dirs
export XDG_CONFIG_HOME="$HOME/.config"
## for linux
# export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
# export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
## for macos
export XDG_DATA_HOME="$HOME/Library/Application Support"
export XDG_CACHE_HOME="$HOME/Library/Caches"

## term
export TERM=screen-256color

## for zsh
export ZDOTDIR="$HOME"

## fork safety
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

## set favorit editor
export EDITOR="nvim"
export VISUAL="nvim"

## make local bins available
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"   # load lvim binary

## java
export JAVA_HOME=`/usr/libexec/java_home`

## gpg / git
export GPG_TTY=$(tty)

## MySQL
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.6/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.6/include"

## MySQL Client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

## fzf default options
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

FZF_COLORS="bg+:-1,\
fg:gray,\
fg+:white,\
border:black,\
spinner:0,\
hl:yellow,\
header:blue,\
info:green,\
pointer:red,\
marker:red,\
prompt:gray,\
hl+:red"

export FZF_DEFAULT_OPTS="--height 60% \
--border sharp \
--color='$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"

## import cargo environment variables
. "$HOME/.cargo/env"
