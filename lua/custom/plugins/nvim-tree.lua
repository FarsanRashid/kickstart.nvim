return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    keys = {
      { '<leader>nt', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle NvimTree' },
    },
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local api = require 'nvim-tree.api'

      require('nvim-tree').setup {
        on_attach = function(bufnr)
          api.config.mappings.default_on_attach(bufnr)

          vim.keymap.set('n', 'gx', api.node.run.system, {
            buffer = bufnr,
            desc = 'Open with system app',
          })
        end,
      }
    end,
  },
}
