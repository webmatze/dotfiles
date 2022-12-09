local keymap = vim.keymap -- Keymap options

-------------------------
-- General keybindings --
-------------------------
vim.g.mapleader = " " -- leader key

-- quit
keymap.set("n", "<leader>q", ":q<CR>", {noremap = true})
keymap.set("n", "<leader>Q", ":q!<CR>", {noremap = true})

-- clear search highlighting
keymap.set("n", "<leader>h", ":noh<CR>", { noremap = true })

-- delete single character without copying to register
keymap.set("n", "x", '"_x', { noremap = true })

-- increment numbers
keymap.set("n", "<leader>+", "<C-a>", { noremap = true }) -- increment number
keymap.set("n", "<leader>-", "<C-x>", { noremap = true }) -- decrement numbers

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
keymap.set("n", "<leader>se", "<C-w>=", { noremap = true }) -- equalize window sizes
keymap.set("n", "<leader>sx", ":close<CR>", { noremap = true }) -- close current window

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { noremap = true }) -- toggle maximize window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true }) -- toggle nvim-tree

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.git_files, { noremap = true }) -- search only commited files
vim.keymap.set('n', '<leader>sf', builtin.find_files, { noremap = true }) -- list files in current dir
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { noremap = true }) -- search string in dir
vim.keymap.set('n', '<leader>sb', builtin.buffers, { noremap = true }) -- search buffers
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { noremap = true }) -- search word under cursor
