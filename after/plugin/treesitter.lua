require('nvim-treesitter.configs').setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java", "python", "javascript"},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = {"csv"},
    additional_vim_regex_highlighting = false,
  },
})
