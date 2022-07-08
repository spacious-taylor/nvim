local packer = require('packer')

function use_plugins()
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- developement: general
  use {
    'neovim/nvim-lspconfig',
    config = require('setup.nvim-lspconfig'),
  } -- language server protocol
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require('setup.nvim-treesitter'),
  } -- treesitter
  use {
    'ms-jpq/coq_nvim',
    run = 'python3 -m coq deps',
  } -- autocomplete
  use 'ms-jpq/coq.artifacts' -- coq snippets
  use 'ms-jpq/coq.thirdparty' -- coq 3rd party source
  use {
    'lewis6991/gitsigns.nvim',
    config = require('setup.gitsigns'),
  } -- git
  use 'editorconfig/editorconfig-vim' -- editorconfig

  -- development: rails
  use 'tpope/vim-rails'
  use 'airblade/vim-localorie' -- translation file navigation

  -- motion
  use {
    'phaazon/hop.nvim',
    config = require('setup.hop'),
  }

  -- session
  use {
    'rmagatti/auto-session',
    config = require('setup.auto-session'),
  }

  -- fuzzy finder
  use 'ibhagwan/fzf-lua' -- fuzzy finder
  use {
    'kevinhwang91/rnvimr',
    config = require('setup.rnvimr'),
  } -- file explorer

  use {
    'folke/tokyonight.nvim',
    config = require('setup.tokyonight'),
  } -- theme
  use {
    'chentoast/marks.nvim',
    config = require('setup.marks'),
  } -- marks
  use {
    'nvim-lualine/lualine.nvim',
    config = require('setup.lualine'),
  } -- status line
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = require('setup.indent-blankline'),
  } -- indentation indicator
  use {
    'folke/which-key.nvim',
    config = require('setup.which-key'),
  } -- which key?
  use {
    'petertriho/nvim-scrollbar',
    config = require('setup.nvim-scrollbar'),
  }
  use 'kyazdani42/nvim-web-devicons' -- icons
end

packer.startup(use_plugins)
