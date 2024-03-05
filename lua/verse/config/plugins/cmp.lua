local M = {}

function M.load()
	local cmp = require("cmp")
	local luasnip = require("luasnip")

	local has_words_before = function()
		unpack = unpack or table.unpack
		local line, col = unpack(vim.api.nvim_win_get_cursor(0))
		return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
	end

	local sources = {
		{ name = "nvim_lsp", priority = 100 },
		{ name = "nvim_lsp_signature_help", priority = 99 },
		{ name = "luasnip", priority = 75 },
		{ name = "buffer", priority = 50 },
		{ name = "path", priority = 25 },
	}

	local names = {
		nvim_lsp = "[LSP]",
		nvim_lsp_signature_help = "[LSP]",
		buffer = "[Buffer]",
		path = "[Path]",
		luasnip = "[LuaSnip]",
	}

	local user_sources = require("verse.core.util").option_or_default("completion_sources", {})

	for _, v in pairs(user_sources) do
		table.insert(sources, v)
		names[v.name] = "[" .. v.name:gsub("^%l", string.upper) .. "]"
	end

	cmp.setup({
		 mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
			["<Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				elseif has_words_before() then
					cmp.complete()
				else
					fallback()
				end
			end, { "i", "s" }),

			["<S-Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end, { "i", "s" }),
		}),

		sources = cmp.config.sources(sources),

		formatting = {
			format = require("lspkind").cmp_format({
				mode = "symbol_text",
				menu = (names)
			})
		},

		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},

		window = {
			completion = cmp.config.window.bordered({ border = "single" }),
			documentation = cmp.config.window.bordered({ border = "single" })
		},

		experimental = {
			ghost_text = true
		}
	})
end

return M
