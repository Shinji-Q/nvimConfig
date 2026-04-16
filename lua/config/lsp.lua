vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev)

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    if client:supports_method('textDocument/implementation') then
      -- Create a keymap for vim.lsp.buf.implementation ...
    end
    -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
    if client:supports_method('textDocument/completion') then
      -- Optional: trigger autocompletion on EVERY keypress. May be slow!
      -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
      -- client.server_capabilities.completionProvider.triggerCharacters = chars
      -- vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
      -- vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end
    -- Auto-format ("lint") on save.
    -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
    --
    --[[
    if not client:supports_method('textDocument/willSaveWaitUntil')
        and client:supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
        end,
      })
    end
    ]] --
    vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')
  end,
})

vim.diagnostic.config({
  virtual_text = true,      -- Show inline messages
  signs = true,             -- Show signs in the gutter
  underline = true,         -- Underline problematic text
  update_in_insert = false, -- Don't update diagnostics while typing
  severity_sort = true,     -- Sort diagnostics by severity
  float = {                 -- Options for floating windows
    border = "single",
    source = "always",
  },
  virtual_lines = false, -- Render diagnostics using virtual lines below code (mutually exclusive with virtual_text)
})

vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, { desc = 'Rename' })
