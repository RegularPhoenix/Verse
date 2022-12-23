local M = {}

function M.load()
  local user_theme = require("user_config").theme
  if user_theme == nil then
    user_theme = "verse.themes." .. "mimic"
  else
    user_theme = "verse.themes." .. user_theme
  end

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
