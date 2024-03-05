local M = {}

M.override_attach = function(client, bufnr)
	if client.server_capabilities.documentSymbolProvider then
		require("nvim-navic").attach(client, bufnr)
		require("nvim-navbuddy").attach(client, bufnr)
	end
end

M.border = {
     {"🭽", "FloatBorder"},
     {"▔", "FloatBorder"},
     {"🭾", "FloatBorder"},
     {"▕", "FloatBorder"},
     {"🭿", "FloatBorder"},
     {"▁", "FloatBorder"},
     {"🭼", "FloatBorder"},
     {"▏", "FloatBorder"},
}

function M.load()
	local orig_util_open_floating_window = vim.lsp.util.open_floating_preview
	function vim.lsp.util.open_floating_preview(content, syntax, opts, ...)
		opts = opts or {}
		opts.border = opts.border or M.border
		return orig_util_open_floating_window(content, syntax, opts, ...)
	end

	require("neodev").setup()
	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	for _, server in pairs(require("verse.core.util").option_or_default("language_servers" , {})) do
		require("lspconfig")[server].setup({
			on_attach = M.override_attach,
			capabilities = capabilities
		})
	end
end

return M
