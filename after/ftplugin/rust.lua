local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set('n', '<leader>cq', function()
  vim.cmd.RustLsp 'codeAction' -- supports rust-analyzer's grouping
  -- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { silent = true, buffer = bufnr, desc = 'rustacean code action' })

vim.keymap.set(
  'n',
  'K', -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp { 'hover', 'actions' }
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set('n', '<leader>ct', function()
  vim.cmd.RustLsp { 'testables', bang = true }
end, { desc = 'run latest testable' })
vim.keymap.set('n', '<leader>cn', function()
  vim.cmd.RustLsp 'testables'
end, { desc = 'show list of testables' })
vim.keymap.set('n', '<leader>cd', function()
  vim.cmd.RustLsp 'openDocs'
end, { desc = 'open documentation from crate.io' })
vim.keymap.set('n', '<leader>ced', function()
  vim.cmd.RustLsp 'renderDiagnostic'
end, { desc = 'cycle diagnostic' })
vim.keymap.set('n', '<leader>cee', function()
  vim.cmd.RustLsp 'explainError'
end, { desc = 'cycle explain error' })
vim.keymap.set('n', '<leader>cr', function()
  vim.cmd.RustLsp 'run'
end, { desc = 'run under cursor' })
