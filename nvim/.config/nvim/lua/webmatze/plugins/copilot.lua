local setup, copilot = pcall(require, "copilot")
if not setup then
  return
end

copilot.setup({
  suggestion = {
    auto_trigger = true,
    keymap = {
      accept = "<C-a>",
      dismiss = "<C-d>",
      next = "<C-n>",
    },
  }
})
