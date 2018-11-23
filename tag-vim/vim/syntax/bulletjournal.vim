" Vim syntax file
" Language: Bullet Journal
" Maintainer: Mathias Karstädt
" Latest Revision: 24 October 2018

if exists("b:current_syntax")
  finish
endif

syn region bjPage start="^#" end="$"
syn match bjEvent /^\s*°\s/
syn match bjTask /^\s*\*\s/
syn match bjTask /^\s*x\s/
syn match bjTask /^\s*<\s/
syn match bjTask /^\s*>\s/
syn match bjNote /^\s*-\s/

" setup syntax highlighting

let b:current_syntax = "bulletjournal"

hi def link bjPage Identifier
hi def link bjEvent Keyword
hi def link bjTask String
hi def link bjNote Delimiter
