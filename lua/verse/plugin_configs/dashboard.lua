local M = {}

function M.load()
  local user_theme = ""
  if require("verse.misc_helper").user_config_exists() then
    user_theme = require("user_config").theme
    if user_theme ~= nil then
      user_theme = "verse.themes." .. user_theme
    else
      user_theme = "verse.themes." .. require("verse.git").get_verse_release_name():lower()
    end
  end

  local ltheme = require(user_theme)
  local lheader = ltheme.header
  local lcenter = ltheme.center
  local lfooter = ltheme.footer
  local ltype = ltheme.type

  local db = require('dashboard')

  db.setup {
    theme = ltype,
    config = {
      header = lheader,
      center = lcenter,
      footer = lfooter,
    }
  }

  ltheme.opts()
end

return M
