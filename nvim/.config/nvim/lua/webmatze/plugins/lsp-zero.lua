local setup, lsp = pcall(require, "lsp-zero")
if not setup then
  return
end

lsp.preset("recommended")

lsp.setup()
