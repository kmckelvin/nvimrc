vim.g.mapleader = " "

-- vim config
vim.keymap.set("n", "<leader>vs", ":source ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>vi", ":tabe ~/.config/nvim/init.lua<CR>:lcd %:p:h<CR>")

-- tabs
vim.keymap.set("n", "t]", ":tabnext<CR>")
vim.keymap.set("n", "t[", ":tabprevious<CR>")
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>")

-- file management
vim.keymap.set("n", "<leader>fs", ":w<CR>")
vim.keymap.set("n", "<C-s>", "<esc>:w<CR>")
vim.keymap.set("i", "<C-s>", "<esc>:w<CR>l")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fc", ":let @+ = expand('%')<CR>:echo expand('%')<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste without changing buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "Q", ":q<CR>")

-- window management
vim.keymap.set("n", "<leader>=", ":wincmd =<CR>")
vim.keymap.set("n", "<leader>[", ":bp<CR>")
vim.keymap.set("n", "<leader>]", ":bn<CR>")

-- terminal
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>")

-- terminal pane management
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
vim.keymap.set('t', '<esc><esc>', [[<Cmd>ToggleTerm<CR>]])
vim.keymap.set('t', '<leader><esc>', [[<C-\><C-n>]])

local function edit_file_under_cursor()
  vim.cmd('normal! viWo"py')
  local grabbed_string = vim.fn.getreg('p')
  vim.api.nvim_input('<ESC>')

  local file, line_number = string.match(grabbed_string, "(.-):([0-9]+)")

  if line_number == nil then
    file = grabbed_string
  end

  if vim.loop.fs_stat(vim.fn.getcwd() .. '/' .. file) ~= nil then
    vim.cmd('wincmd p')
    vim.cmd('e ' .. file)

    if line_number ~= nil then
      vim.cmd('normal ' .. line_number .. 'gg')
    end
  end
end

vim.keymap.set('n', '<leader>gf', edit_file_under_cursor)
