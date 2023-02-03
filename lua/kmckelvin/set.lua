vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.splitright = true
vim.opt.splitbelow = true

-- statusline
vim.opt.statusline="%{FugitiveStatusline()} %f%m%= %y %{&fileencoding?&fileencoding:&encoding} %p%% %l:%c"
-- end statusline
