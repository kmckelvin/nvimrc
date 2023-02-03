vim.cmd.colorscheme("codedark")

-- vim.highlight.CursorLine = { guibg = "#222222" }
-- vim.highlight.LineNr = { guifg = "lightblue" }

vim.api.nvim_set_hl(0, "CursorLine", { bg = "#222222" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "lightblue" })
vim.api.nvim_set_hl(0, "Normal", { bg = "#1a1a1a" })
