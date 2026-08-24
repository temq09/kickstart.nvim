vim.pack.add { 'https://github.com/shortcuts/no-neck-pain.nvim' }
require('no-neck-pain').setup {
  width = 130,
}

vim.keymap.set('n', '<leader>np', function() require('no-neck-pain').toggle() end, { desc = 'Toggle No Neck Pain' })
