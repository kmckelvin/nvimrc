vim.api.nvim_create_autocmd("BufEnter", {
  command = "setl wrap linebreak",
  pattern = "*.md"
})
