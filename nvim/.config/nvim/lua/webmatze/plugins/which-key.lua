local setup, whichkey = pcall(require, "which-key")
if not setup then
  return
end

whichkey.setup({})
whichkey.register({
  b = {
    name = "+buffer",
    b = { "<cmd>Telescope buffers<cr>", "buffers" },
    d = { "<cmd>bdelete<cr>", "delete" },
    n = { "<cmd>bnext<cr>", "next" },
    p = { "<cmd>bprevious<cr>", "previous" },
  },
}, { prefix = "<leader>" })
