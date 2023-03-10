vim.cmd.colorscheme("codedark")

vim.api.nvim_set_hl(0, "CursorLine", { bg = "#222222" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "lightblue" })
vim.api.nvim_set_hl(0, "Normal", { bg = "#1a1a1a" })

vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#136f13" }) -- fugitive git diffs

vim.api.nvim_set_hl(0, "Blamer", { fg = "#666666" })
