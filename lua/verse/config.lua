require("verse.misc.default_config")


local vl = vim.loop
local fn = vim.fn

local separator = vl.os_uname().version:match "Windows" and "\\" or "/"
local file_path = table.concat({vim.fn.stdpath("config"), "lua", "user_config.lua"}, separator)
local example_path = table.concat({vim.fn.stdpath("config"), "lua", "verse", "misc", "example_config.lua"}, separator)


local check_user_config = function()
  local config = vl.fs_stat(file_path)
  if not config or config.type ~= "file" then
    return false
  end
  return true
end


local user_config_exists = check_user_config()


if user_config_exists then
  require("user_config"):main_options()
  require("user_config"):autocmds()

  require("mapx").setup({
	global = true,
  })

  vim.schedule(function()
    if package.loaded["mapx"] then
      require("user_config"):keybinds()
    end 
  end)
else
  print "User config not found, creating an example..."
  vl.fs_copyfile(example_path, file_path)
end