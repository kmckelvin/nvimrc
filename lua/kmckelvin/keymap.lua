vim.g.mapleader = " "

-- vim config
vim.keymap.set("n", "<leader>vs", ":source ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>vi", ":tabe ~/.config/nvim/init.lua<CR>")

-- tabs
vim.keymap.set("n", "t]", ":tabnext<CR>")
vim.keymap.set("n", "t[", ":tabprevious<CR>")
vim.keymap.set("n", "<ESC><ESC>", ":noh<CR>")

-- file management
vim.keymap.set("n", "<leader>fs", ":w<CR>")
vim.keymap.set("n", "<C-s>", "<esc>:w<CR>")
vim.keymap.set("i", "<C-s>", "<esc>:w<CR>l")


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")

-- paste without changing buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "Q", ":q<CR>")
