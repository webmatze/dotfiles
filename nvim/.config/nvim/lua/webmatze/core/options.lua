local opt = vim.opt -- Global options

-- line numbers
opt.number = true -- show line numbers
opt.relativenumber = true -- show relative line numbers

-- tabs & indents
opt.tabstop = 2 -- number of visual spaces per TAB
opt.shiftwidth = 2 -- number of spaces in tab when editing
opt.softtabstop = 2 -- number of spaces in tab when editing
opt.expandtab = true -- convert tabs to spaces
opt.smartindent = true -- make indenting smart
opt.autoindent = true -- copy indent from current line
opt.smarttab = true -- insert indents automatically

-- line wrapping
opt.wrap = false -- display lines as one long line

-- search
opt.hlsearch = true -- highlight all matches on previous search
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true -- override 'ignorecase' if search pattern contains upper case

-- cursor line
opt.cursorline = true -- highlight the current line

-- colorscheme
opt.termguicolors = true -- set term gui colors most terminals support this
opt.background = "dark" -- tell vim what the background color looks like
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time

-- backspace
opt.backspace = "indent,eol,start" -- make backspace in insert mode behave as most other editors

-- clipboard
opt.clipboard:append("unnamedplus") -- copy paste between vim and everything else

-- split windows
opt.splitbelow = true -- force all horizontal splits to go below current window
opt.splitright = true -- force all vertical splits to go to the right of current window

-- more
opt.iskeyword:append("-") -- treat dash separated words as a word text object"
