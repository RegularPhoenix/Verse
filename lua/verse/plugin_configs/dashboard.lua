local M = {}

function M.load()
  local separator = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
  local user_theme = table.concat({"verse", "themes", require('user_config').theme}, separator) or "verse.themes.mimic"
  local theme = require(user_theme)
  local header = theme.header
  local center = theme.center
  local footer = theme.footer

  theme.opts()

  local db = require('dashboard')

  db.session_auto_save_on_exit = true
  db.custom_header = header
  db.custom_center = center
  db.custom_footer = footer
end

return M
