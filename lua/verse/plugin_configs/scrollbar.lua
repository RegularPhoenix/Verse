local M = {}

function M.load()
	local colours = require('catppuccin.palettes').get_palette()
	
	local cfg = {
		handle = {
			color = colours.crust,
		},
		handlers = {
			search = true,
		},
	}
	
	require('scrollbar').setup(cfg)
	require('scrollbar.handlers.search').setup()
end

return M
