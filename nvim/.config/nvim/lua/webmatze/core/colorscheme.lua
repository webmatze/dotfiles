-- set current colorscheme
local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
  print("Tokyonight colorscheme not found")
  return
end
