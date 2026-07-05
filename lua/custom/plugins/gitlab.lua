return {
  'harrisoncramer/gitlab.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'dlyongemallo/diffview-plus.nvim',
    'stevearc/dressing.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  build = function()
    require('gitlab.server').build(true)
  end,
  config = function()
    require('diffview')

    require('gitlab').setup {
      auth_provider = function()
        local token, url, err = require('gitlab.state').default_auth_provider()
        return token, url or 'https://gitlab.agodadev.io', err
      end,
      keymaps = {
        discussion_tree = {
          switch_view = '<Tab>',
        },
      },
    }
  end,
}
