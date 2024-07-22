-- GENERAl BEHAVIOUR

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.wo.wrap = false

vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- list invisible characters
vim.opt.list = false
vim.opt.listchars:append({tab = '|->', space='∙', trail='~'})

-- vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.sw = 4
vim.opt.expandtab = true

vim.opt.shell="bash"

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir/"
vim.opt.undofile = true

-- global status line
vim.opt.laststatus = 3;

vim.opt.winbar = "%=%.40f%m%r%y"



-- gui setup

vim.opt.guifont={"Fira Code", ":h10"}

