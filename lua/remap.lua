vim.keymap.set("n", "<leader>od", vim.cmd.Ex)

vim.keymap.set('n', '<C-j>', 'ddp==')
vim.keymap.set('n', '<C-k>', 'ddkP==')

vim.keymap.set('n', '<C-s><C-j>', ':split<CR><C-w>j')
vim.keymap.set('n', '<C-s><C-l>', ':vsplit<CR><C-w>l')
vim.keymap.set('n', '<C-q>', ':q<CR>')

-- search always in the middle

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<C-,>', 'I//<Esc>')



-- move down and indent
vim.keymap.set('v', 'J', ':m \'>+1<cr>gv=gv')

-- only works for a single line
vim.keymap.set('v', 'K', ':m \'>-2<CR>gv=gv')

vim.keymap.set('n', '<C-t>', ':terminal ZDOTDIR=~/ zsh<CR>:resize 10<CR>a')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>ss', ':%s/localhost/192.168.100.20/c<CR>yy<Esc>')
vim.keymap.set('n', '<leader>sw', ':%s/localhost/192.168.100.19/c<CR>yy<Esc>')
vim.keymap.set('n', '<leader>hl', ':set hlsearch!<CR>')
vim.keymap.set('n', '<C-n>', ':bn<CR>')
vim.keymap.set('n', '<C-p>', ':bp<CR>')
