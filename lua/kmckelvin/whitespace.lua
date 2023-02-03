vim.api.nvim_create_autocmd("BufWritePre", {
  command = "%s/\\s\\+$//e"
})

vim.api.nvim_create_autocmd("BufWritePre", {
  command = '%s,\\($\\n\\s*\\)\\+\\%$,,e'
})
