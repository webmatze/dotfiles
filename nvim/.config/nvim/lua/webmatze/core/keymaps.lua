local keymap = vim.keymap -- Keymap options

-------------------------
-- General keybindings --
-------------------------
vim.g.mapleader = " " -- leader key

-- visual mode
keymap.set("v", "<leader>y", '"+y') -- copy to system clipboard in visual mode
keymap.set("v", "<leader>p", '"+p') -- paste from system clipboard in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move line down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move line up

-- normal mode
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { noremap = true }) -- tmux navigation
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { noremap = true }) -- tmux navigation
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { noremap = true }) -- tmux navigation
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { noremap = true }) -- tmux navigation

-- quit
keymap.set("n", "<leader>c", ":q<CR>", { noremap = true }) -- normal close buffer
keymap.set("n", "<leader>q", ":qa<CR>", { noremap = true }) -- safe close all
keymap.set("n", "<leader>Q", ":qa!<CR>", { noremap = true }) -- unsafe close all

-- clear search highlighting
keymap.set("n", "<leader>h", ":noh<CR>", { noremap = true })

-- some fun with cellular automata
keymap.set("n", "<leader>d", "<cmd>CellularAutomaton make_it_rain<CR>", { noremap = true })

-- delete single character without copying to register
keymap.set("n", "x", '"_x', { noremap = true })

-- increment numbers
-- keymap.set("n", "<leader>+", "<C-a>", { noremap = true }) -- increment number
-- keymap.set("n", "<leader>-", "<C-x>", { noremap = true }) -- decrement numbers

-- buffer navigation
keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true }) -- next buffer
keymap.set("n", "<leader>bp", ":bp<CR>", { noremap = true }) -- previous buffer
keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true }) -- delete buffer

-- tab navigation
keymap.set("n", "<leader>tn", ":tabn<CR>", { noremap = true }) -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", { noremap = true }) -- previous tab
keymap.set("n", "<leader>td", ":tabclose<CR>", { noremap = true }) -- delete tab
keymap.set("n", "<leader>to", ":tabnew<CR>", { noremap = true }) -- open new tab

-- window navigation
keymap.set("n", "<leader>wh", "<C-w>h", { noremap = true }) -- move to left window
keymap.set("n", "<leader>wj", "<C-w>j", { noremap = true }) -- move to bottom window
keymap.set("n", "<leader>wk", "<C-w>k", { noremap = true }) -- move to top window
keymap.set("n", "<leader>wl", "<C-w>l", { noremap = true }) -- move to right window
keymap.set("n", "<leader>wH", "<C-w>5<", { noremap = true }) -- move window to left
keymap.set("n", "<leader>wJ", "<C-w>5+", { noremap = true }) -- move window to bottom
keymap.set("n", "<leader>wK", "<C-w>5-", { noremap = true }) -- move window to top
keymap.set("n", "<leader>wL", "<C-w>5>", { noremap = true }) -- move window to right

-- split navigation
keymap.set("n", "<leader>sh", "<C-w>s", { noremap = true }) -- split window horizontally
keymap.set("n", "<leader>sv", "<C-w>v", { noremap = true }) -- split window vertically
keymap.set("n", "<leader>|", ":vsplit<CR>", { noremap = true, desc = "split window vertically" }) -- split window vertically
keymap.set("n", "<leader>-", ":split<CR>", { noremap = true, desc = "split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { noremap = true }) -- equalize window sizes
keymap.set("n", "<leader>sx", ":close<CR>", { noremap = true }) -- close current window

-- lsp
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true }) -- go to definition
keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true }) -- go to declaration
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true }) -- go to implementation
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true }) -- go to references
keymap.set("n", "<leader>gs", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", { noremap = true }) -- go to 
keymap.set("n", "<leader>gR", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true }) -- rename
keymap.set("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true }) -- code action
keymap.set("n", "<leader>gf", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true }) -- format
keymap.set("n", "<leader>gh", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true }) -- hover
-- TODO: configure diagnostics
keymap.set("n", "<leader>gl", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", { noremap = true }) -- line diagnostics
keymap.set("n", "<leader>gL", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", { noremap = true }) -- line diagnostics (all)
keymap.set("n", "<leader>gn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", { noremap = true }) -- next diagnostic
keymap.set("n", "<leader>gN", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = true }) -- previous diagnostic

-- plugin keymaps

-- undo tree
keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true })

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { noremap = true }) -- toggle maximize window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { noremap = true }) -- toggle nvim-tree

-- alpha-nvim
keymap.set("n", "<leader>;", ":Alpha<CR>", { noremap = true }) -- toggle alpha-nvim

-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>fg', builtin.git_files, { noremap = true }) -- search only commited files
keymap.set('n', '<leader>ff', builtin.find_files, { noremap = true }) -- list files in current dir
keymap.set('n', '<leader>fl', builtin.live_grep, { noremap = true }) -- search string in dir
keymap.set('n', '<leader>fb', builtin.buffers, { noremap = true }) -- search buffers
keymap.set('n', '<leader>fw', builtin.grep_string, { noremap = true }) -- search word under cursor
keymap.set('n', '<leader>fo', builtin.oldfiles, { noremap = true }) -- search old files

-- copilot keymaps are defined in plugins/copilot.lua
-- local copilot = require('copilot.suggestion')
-- vim.keymap.set('i', '<C-a>', copilot.accept(), { noremap = true }) -- accept suggestion copilot
-- vim.keymap.set('i', '<C-d>', copilot.dismiss(), { noremap = true }) -- dismiss suggestion copilot
-- vim.keymap.set('i', '<C-n>', copilot.next(), { noremap = true }) -- next suggestion copilot
