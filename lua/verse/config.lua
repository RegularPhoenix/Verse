local exists, notify = pcall(require, "notify")
if exists then
  vim.notify = notify
end

require("verse.misc.default_config"):main_options()
require("verse.misc.default_config"):autocmds()
require("verse.misc.default_config"):keybinds()

local example_path = require("verse.misc_helper").concat_paths({vim.fn.stdpath("config"), "lua", "verse", "misc", "example_config.lua"})
local file_path = require("verse.misc_helper").concat_paths({vim.fn.stdpath("config"), "lua", "user_config.lua"})

if not require("verse.misc_helper").user_config_exists() then
  print "User config not found, creating an example..."
  vim.loop.fs_copyfile(example_path, file_path)
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
    wk.register { config.keybinds }
  end
end
