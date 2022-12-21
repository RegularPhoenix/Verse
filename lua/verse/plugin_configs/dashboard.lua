local separator = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
local user_theme = table.concat({"verse", "themes", require('user_config').theme}, separator) or "verse.themes.apex"
local theme = require(user_theme)

local db = require('dashboard')

db.session_auto_save_on_exit = true
db.custom_header = theme
db.custom_center = {
	{
		icon = '>  ',
		desc = 'Recently opened files                   ',
		action =  'Telescope oldfiles',
		shortcut = 'SPC f h',
	},

	{
		icon = '>  ',
		desc = 'Browse files                            ',
		action = 'Telescope find_files',
		shortcut = 'SPC f f'
	},

	{
		icon = '>  ',
		desc = 'New file                                ',
		shortcut = 'SPC c n',
		action = 'DashboardNewFile',
	},

	{
		icon = '>  ',
		desc = 'Change terminal color                   ',
		shortcut = 'SPC t c',
		action = 'Telescope colorscheme',
	},

	{
		icon = '>  ',
		desc = 'Terminate current session               ',
		action = 'q',
		shortcut = 'SPC f w',
	},
}
db.custom_footer = {
	'Detected ' .. #vim.tbl_keys(packer_plugins) .. ' plugins',
	'I am text'
}
