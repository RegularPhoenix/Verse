local M = {}

function M.load()
  local fn = vim.fn

  local separator = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
  local file_path = table.concat({fn.stdpath("config"), "lua", "user_config.lua"}, separator)
  local user_theme = "verse.themes.mimic"

  if fn.empty(fn.glob(file_path)) <= 0 then
    user_theme = require("user_config").theme
    if user_theme == nil then
      user_theme = "verse.themes." .. require("verse.git").get_verse_release_name():lower()
    else
      user_theme = "verse.themes." .. user_theme
    end
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
