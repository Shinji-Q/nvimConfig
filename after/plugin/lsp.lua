local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
	'rust_analyzer',
	'clangd',
	'lua_ls',
	'texlab',
	'jdtls', -- NOTE: export JAVA_HOME='java17/path/bin/java' required
	'pylsp',
})

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.on_attach(function(client, bufrnr)
    lsp.default_keymaps({buffer=bufrnr})
end)

-- completion settings
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.select}
local cmp_mappings = lsp.defaults.cmp_mappings {
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete,
}

-- lsp keybinds

vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev)

lsp.setup()

