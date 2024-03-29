local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = 'require("plugins.nvim-treesitter")',
  }
  use {
    'p00f/nvim-ts-rainbow',
    config = 'require("plugins.nvim-ts-rainbow")',
    after = 'nvim-treesitter',
  }
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  use {
    'glepnir/galaxyline.nvim',
     branch = 'main',
     config = function() require'plugins.galaxyline' end,
     requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'tanvirtin/monokai.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require("plugins.nvim-tree")
    end
  }

  use {
    'neovim/nvim-lspconfig',
    config = 'require("plugins.lspconfig")',
  }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }
  use {
    'hrsh7th/nvim-cmp',
    config = 'require("plugins.cmp")',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'quangnguyen30192/cmp-nvim-ultisnips'
    }
  }

  use { 'honza/vim-snippets' }
  use { 'SirVer/ultisnips' }

  use {
    'nvim-telescope/telescope.nvim',
    config = 'require("plugins.telescope")',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'ethanholz/nvim-lastplace',
    config = 'require("plugins.lastplace")',
  }
end)
