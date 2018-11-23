" .vimrc
" Author: Mathias Karstädt

" Basic Settings {{{
au BufRead,BufNewFile *.bj set filetype=bulletjournal
syntax on
color dracula " use dracular color scheme
set encoding=utf-8
set nobackup noswapfile
set nocompatible ignorecase smartcase
set hlsearch incsearch
set visualbell noerrorbells
set gdefault
set nowrap
set nu
set showmode showcmd ttyfast
set listchars=tab:\|\ ,trail:·,eol:¬
set nospell
" End Basic Settings }}}

" fzf settings {{{
set rtp+=/usr/local/opt/fzf
" End fzf settings }}}
