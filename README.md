# Kevin's neovim config

This is my day to day config for neovim. A lot of it was translated over from my old
vimscript vimrc into a neovim lua configuration.

Inspiration was drawn from the [neovim kickstart](https://github.com/nvim-lua/kickstart.nvim)
and from [The Primeagean's neovim configuration](https://www.youtube.com/watch?v=w7i4amO_zaE).

Where possible I've tried to use the neovim lua bindings, and use vim.cmd sparingly.

## Core plugins

- Telescope for fuzzy finding and LSP list navigation
- LSP Zero
- Fugitive (the best git client!)
- Visual Multi (for multiple cursor support with C-n)
