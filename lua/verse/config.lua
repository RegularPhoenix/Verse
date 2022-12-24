require("verse.misc.default_config"):main_options()
require("verse.misc.default_config"):autocmds()

result, mapx = pcall(require, "mapx")
if result then
  mapx.setup({
    global = true,
  })
end

require("verse.misc.default_config"):keybinds()

local vl = vim.loop
local fn = vim.fn

local separator = vl.os_uname().version:match "Windows" and "\\" or "/"
local file_path = table.concat({vim.fn.stdpath("config"), "lua", "user_config.lua"}, separator)
local example_path = table.concat({vim.fn.stdpath("config"), "lua", "verse", "misc", "example_config.lua"}, separator)

if fn.empty(fn.glob(file_path)) > 0 then
  print "User config not found, creating an example..."
  vl.fs_copyfile(example_path, file_path)
else
  local config = require("user_config")

  if config.main_options ~= nil then
    config.main_options()
  end

  if config.autocmds ~= nil then
    config.autocmds()
  end

  vim.schedule(function()
    if package.loaded["mapx"] then
      if config.keybinds ~= nil then
        config.keybinds()
      end
    end
  end)
end
