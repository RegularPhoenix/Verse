local M = {}

M.override_attach = function(client, bufnr)
	if client.server_capabilities.documentSymbolProvider then
		require("nvim-navic").attach(client, bufnr)
		require("nvim-navbuddy").attach(client, bufnr)
	end
end

function M.load()
	require("neodev").setup()

	for _, server in pairs(require("userconfig.verse").language_servers) do
		require("lspconfig")[server].setup({ on_attach = M.override_attach })
	end
end

return M
