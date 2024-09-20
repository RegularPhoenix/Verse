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

	{
		name = "Format",
		fn = function(args)
			local range = nil

			if args.count ~= 1 then
				local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
				range = {
					start = { args.line1, 0 },
					["end"] = { args.line2, end_line:len() },
				}
			end

			require("conform").format({ async = true, lsp_format = "fallback", range = range })
		end,
		opts = { range = true }
	},
}

local common_opts = { force = true }
for _, cmd in pairs(custom_commands) do
	local opts = vim.tbl_deep_extend("force", common_opts, cmd.opts or {})
	vim.api.nvim_create_user_command(cmd.name, cmd.fn, opts)
end
