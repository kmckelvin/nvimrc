vim.keymap.set("n", "<leader>ft", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>ff", ":NERDTreeFind<CR>")

vim.api.nvim_create_autocmd("BufEnter", {
  command = 'if (&modifiable && g:NERDTree.IsOpen() && expand("%:p")[0] == "/" && expand("%")[0:9] != "NERD_tree_" && expand("%:t") != "COMMIT_EDITMSG") | NERDTreeFind | wincmd p | endif'
})
