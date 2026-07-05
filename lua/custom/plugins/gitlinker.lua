return {
  'linrongbin16/gitlinker.nvim',
  cmd = 'GitLink',
  opts = function()
    local routers = require 'gitlinker.routers'

    return {
      router = {
        browse = {
          ['^gitlab%.agodadev%.io'] = routers.gitlab_browse,
        },
        blame = {
          ['^gitlab%.agodadev%.io'] = routers.gitlab_blame,
        },
        default_branch = {
          ['^gitlab%.agodadev%.io'] = 'https://gitlab.agodadev.io/'
            .. '{_A.ORG}/'
            .. '{_A.REPO}/blob/'
            .. '{_A.DEFAULT_BRANCH}/'
            .. '{_A.FILE}'
            .. '#L{_A.LSTART}'
            .. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
        },
        current_branch = {
          ['^gitlab%.agodadev%.io'] = 'https://gitlab.agodadev.io/'
            .. '{_A.ORG}/'
            .. '{_A.REPO}/blob/'
            .. '{_A.CURRENT_BRANCH}/'
            .. '{_A.FILE}'
            .. '#L{_A.LSTART}'
            .. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
        },
      },
    }
  end,
}
