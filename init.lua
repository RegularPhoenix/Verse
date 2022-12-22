if vim.fn.has "nvim-0.8" ~= 1 then
  vim.notify("Your Neovim version is not supported by Verse, please update to v0.8+", vim.log.levels.WARN)
  vim.wait(5000, function()
    return false
  end)
  vim.cmd "cquit"
end

require("verse.startup").load()

require("verse.config")

local commands = require("verse.commands")   
commands.load_commands(commands.custom_commands)