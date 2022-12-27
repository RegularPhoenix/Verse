M = {}

M.custom_commands = {
  {
    name = "UpdateVerse",
    fn = function()
      require("verse.git"):update_verse()
    end,
  },

  {
    name = "GetVerseVersion",
    fn = function()
      vim.notify(require("verse.git"):get_verse_full_release_name(), vim.log.levels.INFO)
    end,
  },

  {
    name = "EditVerseConfig",
    fn = function()
      local separator = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
      local file_path = table.concat({vim.fn.stdpath("config"), "lua", "user_config.lua"}, separator)
      vim.cmd("e " .. file_path)
    end,
  }
}

function M.load_commands(cmds)
  local common_opts = { force = true }
  for _, cmd in pairs(cmds) do
    local opts = vim.tbl_deep_extend("force", common_opts, cmd.opts or {})
    vim.api.nvim_create_user_command(cmd.name, cmd.fn, opts)
  end
end

return M
