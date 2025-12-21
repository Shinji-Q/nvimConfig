vim.keymap.set("n", "<leader>cv", "<CMD>CsvViewToggle<CR>", { buffer = true })
vim.keymap.set("n", "<leader>ct", "<CMD>CsvViewToggle delimiter=\\t<CR>", { buffer = true })
vim.keymap.set("n", "<leader>c|", "<CMD>CsvViewToggle delimiter=|<CR>", { buffer = true })
vim.opt_local.expandtab = false
