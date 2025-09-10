vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'


	use 'folke/tokyonight.nvim'
	use {
		'rose-pine/neovim',
		as = 'rose-pine'
	}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

	-- lsp-zero

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                   -- Optional
				   'williamboman/mason.nvim',
				run = function()
				    pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

	use "windwp/nvim-autopairs"

	use "iamcco/markdown-preview.nvim"
  use "ray-x/lsp_signature.nvim"
  use "tpope/vim-fugitive"
  use 'mfussenegger/nvim-jdtls'
  use "nvim-tree/nvim-web-devicons"

  use {"stevearc/oil.nvim",
    {"JezerM/oil-lsp-diagnostics.nvim"}
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

end)
