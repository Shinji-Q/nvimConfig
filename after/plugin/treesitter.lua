require('nvim-treesitter.configs').setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java", "python", "javascript", "diff" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = { "csv" },
    additional_vim_regex_highlighting = false,
  },
})

require('treesitter-context').setup {
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  mode = 'topline',
  multiwindow = true
}
