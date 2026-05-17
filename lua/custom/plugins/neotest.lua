vim.pack.add {
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/mrcjkb/rustaceanvim',
  'https://github.com/nvim-neotest/neotest',
}

require('neotest').setup {
  adapters = {
    require 'rustaceanvim.neotest' ,
  },
}
