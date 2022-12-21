M = {}

M.custom_commands = {
  {
    name = "UpdateVerse",
    fn = function()
      require("verse.git"):update_verse()
    end,
  },
}

function M.load_commands(cmds)
  local common_opts = { force = true }
  for _, cmd in pairs(cmds) do
    local opts = vim.tbl_deep_extend("force", common_opts, cmd.opts or {})
    vim.api.nvim_create_user_command(cmd.name, cmd.fn, opts)
  end
end

return M