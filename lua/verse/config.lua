local exists, notify = pcall(require, "notify")
if exists then
  vim.notify = notify
end

require("verse.misc.default_config"):main_options()
require("verse.misc.default_config"):autocmds()
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

  local exists, wk = pcall(require, "which-key")

  if config.keybinds ~= nil and exists then
    wk.register { config.keybinds() }
  end
end
