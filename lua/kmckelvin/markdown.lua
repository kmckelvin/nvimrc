vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.md" },
  callback = function()
    require('cmp').setup.buffer { enabled = false }
  end
})
