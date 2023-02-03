-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  use('airblade/vim-gitgutter')
  use('christoomey/vim-tmux-navigator')
  use('jiangmiao/auto-pairs')
  use('joshdick/onedark.vim')
  use('jwhitley/vim-matchit')
  use('lukas-reineke/indent-blankline.nvim')
  use('mg979/vim-visual-multi')
  use('michaeljsmith/vim-indent-object')
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('scrooloose/nerdtree')
  use('tomasiser/vim-code-dark')
  use('tpope/vim-commentary')
  use('tpope/vim-endwise')
  use('tpope/vim-fugitive')
  use('tpope/vim-rails')
  use('tpope/vim-surround')
  use('vim-test/vim-test')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
end)
