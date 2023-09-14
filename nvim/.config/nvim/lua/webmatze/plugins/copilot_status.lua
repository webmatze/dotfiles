local setup, copilot_status = pcall(require, "copilot-status")
if not setup then
  return
end

copilot_status.setup({
  icons = {
    idle = " ",
    error = " ",
    offline = " ",
    warning = "𥉉 ",
    loading = " ",
  },
  debug = false,
})

