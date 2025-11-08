vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'


  -- colorschemes
  use 'folke/tokyonight.nvim'
  use {
    'rose-pine/neovim',
    as = 'rose-pine'
  }
  use 'rebelot/kanagawa.nvim'

  use 'NLKNguyen/papercolor-theme'
  use 'Luxed/ayu-vim'
  use 'EdenEast/nightfox.nvim'
  use 'navarasu/onedark.nvim'
  use 'sainnhe/everforest'

  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use 'nvim-treesitter/nvim-treesitter-context'

  use({
    'williamboman/mason.nvim',
    { 'williamboman/mason-lspconfig.nvim' },
    run = function()
      pcall(vim.cmd, 'MasonUpdate')
    end,
  })

  use({ 'hrsh7th/nvim-cmp',
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'L3MON4D3/LuaSnip' },
  })

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use "windwp/nvim-autopairs"

  use "iamcco/markdown-preview.nvim"
  use "ray-x/lsp_signature.nvim"
  use "tpope/vim-fugitive"
  use 'mfussenegger/nvim-jdtls'
  use "nvim-tree/nvim-web-devicons"
  use "hat0uma/csvview.nvim"
  use "mbbill/undotree"

  use { "stevearc/oil.nvim",
    { "JezerM/oil-lsp-diagnostics.nvim" }
  }
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    }
  })

  use 'hoob3rt/lualine.nvim'

  -- telescope
  use 'nvim-lua/popup.nvim'
  -- use 'nvim-telescope/telescope-fzy-native.nvim'


  -- copilot
  use 'github/copilot.vim'

  --
  -- use 'chrisgrieser/nvim-origami'
  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = {
      { 'MunifTanjim/nui.nvim' }
    }
  }
end)
