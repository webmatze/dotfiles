local setup, markdown = pcall(require, "markdown")
if not setup then
  return
end

vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 0
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_echo_preview_url = 1
vim.g.mkdp_browser = "firefox"

markdown.setup()

