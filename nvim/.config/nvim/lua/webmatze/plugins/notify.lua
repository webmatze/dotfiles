local setup, notify = pcall(require, "notify")
if not setup then
  return
end

notify.setup({
  timeout = 3000,
})
