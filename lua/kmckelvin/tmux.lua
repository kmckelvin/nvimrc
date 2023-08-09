if vim.fn.exists("$TMUX") then
  vim.api.nvim_create_autocmd(
    { "VimEnter", "VimResume", "BufReadPost", "FileReadPost", "BufEnter" },
    { command = 'call system("tmux rename-window vi:" . fnamemodify(getcwd(), ":t"))' }
  )

  vim.api.nvim_create_autocmd(
    { "VimLeave", "VimSuspend" },
    { command = 'call system("tmux setw automatic-rename")' }
  )
end
