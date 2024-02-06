-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- enable textobjects (w/ nvim-treesitter-textobjects plugin)
  textobjects = {
    select = {
      enable = true,
      -- automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,
      -- keymaps
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
  -- ensure these language parsers are installed
  ensure_installed = {
    "ruby",
    "json",
    "javascript",
    "typescript",
    -- "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    -- "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
  },
  -- auto install above language parsers
  auto_install = true,
})
