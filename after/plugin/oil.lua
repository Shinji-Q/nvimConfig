
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>")

vim.keymap.set("n", "<leader>oo", "<CMD>Oil --float<CR>")

require("oil").setup({
  default_file_explorer = false,
  view_options = {
    show_hidden = true
  },

  float={
    max_width = .5,
    max_height = .5,
  }
})


require("oil-lsp-diagnostics").setup({
  diagnostic_colors = {
    error = "DiagnosticError",
    warn  = "DiagnosticWarn",
    info  = "DiagnosticInfo",
    hint  = "DiagnosticHint",
  },
  diagnostic_symbols = {
    error = "",
    warn = "",
    info = "",
    hint = "󰌶",
  }
})
