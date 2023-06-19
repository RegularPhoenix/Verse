local custom_commands = {
	{
		name = "VerseVersion",
		fn = function()
			vim.notify(require("verse.core.git"):get_verse_full_release_name(), vim.log.levels.INFO)
		end,
	},

	{
		name = "VerseUpdate",
		fn = function()
			require("verse.core.git"):update_verse()
		end,
	},

	{
		name = "VerseCheckUpdates",
		fn = function()
			require("verse.core.git"):check_for_updates()
		end,
	},
}

local common_opts = { force = true }
for _, cmd in pairs(custom_commands) do
	local opts = vim.tbl_deep_extend("force", common_opts, cmd.opts or {})
	vim.api.nvim_create_user_command(cmd.name, cmd.fn, opts)
end
