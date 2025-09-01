
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>")

vim.keymap.set("n", "<leader>oo", "<CMD>Oil --float<CR>")

require("oil").setup({
  view_options = {
    show_hidden = true
  },

  float={
    max_width = .5,
    max_height = .5,
  }
})
