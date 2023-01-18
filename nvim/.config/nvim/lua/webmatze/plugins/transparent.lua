local setup, transparent = pcall(require, "transparent")
if not setup then
  return
end

transparent.setup({
  enable = true,
  extra_groups = { "NvimTreeNormal", "NvimTreeStatuslineNc" },
})

