local M = {}

function M.load()
	require("toggleterm").setup{
		open_mapping = [[<F4>]],
		direction = 'float',
	}
end

return M
