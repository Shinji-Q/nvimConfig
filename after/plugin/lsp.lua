local lspzero = require('lsp-zero')
local lspconfig = require('lspconfig');


lspzero.preset('recommended')
lspzero.ensure_installed({
	'rust_analyzer',
	'clangd',
	'lua_ls',
	'texlab',
	'jdtls', -- NOTE: export JAVA_HOME='java17/path/bin/java' required
	'pylsp',
})

lspzero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lspzero.on_attach(function(client, bufrnr)
    lspzero.default_keymaps({buffer=bufrnr})
end)

-- completion settings
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.select}
local cmp_mappings = lspzero.defaults.cmp_mappings {
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete,
}

-- lsp keybinds

vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev)

lspconfig.pylsp.setup({
  settings = {
    configurationSources={'flake8'},
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
        flake8 = {
          enabled=true,
          ignore={'E501'},
        },
        mccabe = {
          threshold = 80,
        }
      },
    },
  },
})

lspzero.setup()
