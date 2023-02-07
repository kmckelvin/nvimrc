require("nvim-web-devicons").setup()
require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
  }
})

vim.keymap.set("n", "<leader>ft", ":NvimTreeOpen<CR>")
vim.keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>")
