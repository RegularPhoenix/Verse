local M = {}

function M.load()
	require'lspconfig'.pyright.setup{}
end

return M