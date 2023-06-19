local M = {}

M.override_attach = function(client, bufnr)
	if client.server_capabilities.documentSymbolProvider then
		require("nvim-navic").attach(client, bufnr)
		require("nvim-navbuddy").attach(client, bufnr)
	end
end

function M.load()
	-- TODO: Should I load anything?
end

return M
