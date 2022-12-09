-- set colorscheme to Dracula
local status, _ = pcall(vim.cmd, "colorscheme dracula")
if not status then
  print("Dracula colorscheme not found")
  return
end
