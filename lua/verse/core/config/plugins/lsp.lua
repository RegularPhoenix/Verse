local M = {}

local override_attach = function(client, bufnr)
	if client.server_capabilities.documentSymbolProvider then
		require("nvim-navic").attach(client, bufnr)
		require("nvim-navbuddy").attach(client, bufnr)
	end
end

function M.load()
	require("neodev").setup()
	require("lspconfig")["lua_ls"].setup({ on_attach = override_attach })
end

return M
