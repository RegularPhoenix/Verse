local M = {}

function M.load()
  require('ccc').setup {
    highlighter = {
      auto_enable = true,
    }
  }
end

return M
