local setup, tokyonight = pcall(require, "tokyonight")
if not setup then
  return
end

tokyonight.setup({
  style = "storm"
})
