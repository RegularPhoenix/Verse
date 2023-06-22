-- Some Verse options can be set here

return {
	-- Default colorscheme that will be loaded on start
	colorscheme = "tokyonight",

	-- Show fortune instead of version info in the dashboard footer
	fortune = true,

	-- All language servers will be automatically installed by Mason
	-- Overriding lspconfig config in userconfig/plugins will disable autoload
	-- Overriding Mason config in userconfig/plugins will disable autoinstall
	language_servers = {
		"lua_ls"
	},

	-- Specify test runners to load. They will NOT be installed automatically
	-- Overriding neotest will disable autoload
	test_runners = {

	},

	-- TODO: Make setup for DAP and formatters?
}
