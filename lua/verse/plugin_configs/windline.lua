local M = {}

function M.load()
  local fn = vim.fn

  local separator = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
  local file_path = table.concat({fn.stdpath("config"), "lua", "user_config.lua"}, separator)
  local user_theme = "wlsample.bubble"

  if fn.empty(fn.glob(file_path)) <= 0 then
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
