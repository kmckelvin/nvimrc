-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

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

      --
      { 'j-hui/fidget.nvim' },
      { 'folke/neodev.nvim' },
    }
  }

  use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v<CurrentMajor>.*",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  })

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use('APZelos/blamer.nvim')
  use('MunifTanjim/prettier.nvim')
  use('RRethy/nvim-treesitter-endwise')
  use('airblade/vim-gitgutter')
  use('akinsho/bufferline.nvim', { tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' })
  use('christoomey/vim-tmux-navigator')
  use('ixru/nvim-markdown')
  use('jose-elias-alvarez/null-ls.nvim')
  use('joshdick/onedark.vim')
  use('jwhitley/vim-matchit')
  use('kchmck/vim-coffee-script')
  use('lukas-reineke/indent-blankline.nvim')
  use('mg979/vim-visual-multi')
  use('michaeljsmith/vim-indent-object')
  use('nvim-lualine/lualine.nvim')
  use('nvim-telescope/telescope-ui-select.nvim')
  use('nvim-tree/nvim-tree.lua')
  use('nvim-tree/nvim-web-devicons')
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/nvim-treesitter-context')
  use('nvim-treesitter/nvim-treesitter-refactor')
  use('nvim-treesitter/nvim-treesitter-textobjects', { after = 'nvim-treesitter' })
  use('nvim-treesitter/playground')
  use('slim-template/vim-slim')
  use('stevearc/dressing.nvim')
  use('tomasiser/vim-code-dark')
  use('tpope/vim-commentary')
  use('tpope/vim-fugitive')
  use('tpope/vim-rails')
  use('tpope/vim-rhubarb')
  use('vim-test/vim-test')
  use('windwp/nvim-autopairs')
end)
