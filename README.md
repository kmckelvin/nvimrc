# Kevin's neovim config

This is my day to day config for neovim. A lot of it was translated over from my old
vimscript vimrc into a neovim lua configuration.

Inspiration was drawn from the [neovim kickstart](https://github.com/nvim-lua/kickstart.nvim)
and from [The Primeagean's neovim configuration](https://www.youtube.com/watch?v=w7i4amO_zaE).

Where possible I've tried to use the neovim lua bindings, and use vim.cmd sparingly.

## Core plugins

- [Telescope](https://github.com/nvim-telescope/telescope.nvim) for fuzzy finding and LSP list navigation
- [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [Fugitive](https://github.com/tpope/vim-fugitive) (the best git client!)
- [Visual Multi](https://github.com/mg979/vim-visual-multi) (for multiple cursor support with C-n)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for AST magic and syntax highlighting
