vim.keymap.set('n', '<C-c>', 'I//<Esc>')
vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')

vim.lsp.enable('jdtls')
