local setup, whichkey = pcall(require, "which-key")
if not setup then
  return
end

whichkey.setup({})
-- nmaps
whichkey.register({
  ["<leader>"] = {
    name = "leader",
    c = "close buffer",
    q = "safe close all",
    Q = "unsafe close all",
    h = "clear search highlighting",
    x = "delete single character without copying to register",
    ["+"] = "increment number",
    ["-"] = "decrement number",
    e = "toggle nvim-tree",
    [";"] = "toggle alpha-nvim",
  },
  ["<leader>b"] = {
    name = "buffer",
    n = "next buffer",
    p = "previous buffer",
    d = "delete buffer",
  },
  ["<leader>t"] = {
    name = "tabs",
    n = "next tab",
    p = "previous tab",
    d = "delete tab",
    o = "open new tab",
  },
  ["<leader>w"] = {
    name = "windows",
    h = "move to left window",
    j = "move to bottom window",
    k = "move to top window",
    l = "move to right window",
    H = "move window to left",
    J = "move window to bottom",
    K = "move window to top",
    L = "move window to right",
  },
  ["<leader>s"] = {
    name = "split",
    h = "split window horizontally",
    v = "split window vertically",
    e = "equalize window sizes",
    x = "close current window",
    m = "toggle maximize window",
  },
  ["<leader>f"] = {
    name = "find",
    g = "find git files",
    f = "find files",
    l = "find live grep",
    b = "find buffers",
    w = "find word under cursor",
    o = "find old (recent) files",
  },
}, {
  mode = "n",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = false,
})
-- imaps
whichkey.register({
  ["<C-a>"] = { "<cmd>lua require('copilot.suggestion').accept()<cr>", "accept suggestion" },
  ["<C-d>"] = { "<cmd>lua require('copilot.suggestion').dismiss()<cr>", "dismiss suggestion" },
  ["<C-n>"] = { "<cmd>lua require('copilot.suggestion').next()<cr>", "next suggestion" },
}, { mode = "i" })
