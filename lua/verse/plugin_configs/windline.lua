local M = {}

function M.load()
  local user_theme = "wlsample.bubble"

  if require("verse.misc_helper").user_config_exists() then
    user_theme = require("user_config").statusline
    if user_theme == nil then
      user_theme = "wlsample.bubble"
    else
      user_theme = "wlsample." .. user_theme
    end
  end

  require(user_theme)
end

return M
