local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  view = {
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = { "<CR>", "o", "l" }, action = "edit" },
        { key = { "<BS>", "h" }, action = "close_node" }
      }
    }
  } 
})
