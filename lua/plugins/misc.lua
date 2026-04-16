return {
  {"nvim-tree/nvim-web-devicons"},
  {'hoob3rt/lualine.nvim'},
  {'github/copilot.vim'},
  {'iamcco/markdown-preview.nvim'},
  {'tpope/vim-fugitive'},
  {'mfussenegger/nvim-jdtls'},
  {'nvim-tree/nvim-web-devicons'},
  {'hat0uma/csvview.nvim'},
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },
  {'nvim-treesitter/nvim-treesitter-context'},
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
}
}
