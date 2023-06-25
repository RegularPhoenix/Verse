local M = {}

function M.load()
	-- stylua: ignore
	local palette = {
		pastel_red    = "#FF6961",
		pastel_orange = "#FF964F",
		pastel_green  = "#C1E1C1",
		pastel_yellow = "#FDFD96",
		pastel_cyan   = "#A4D8D8",
	}

	local sections = {
		datetime = {
			"datetime",
			style = "default",
		},

		lsp_name = {
			function()
				local msg = "LSP Inactive"
				local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
				local clients = vim.lsp.get_active_clients()
				if next(clients) == nil then
					return msg
				end
				for _, client in ipairs(clients) do
					local filetypes = client.config.filetypes
					if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
						return client.name
					end
				end
				return msg
			end,
			color = { gui = "italic" },
		},

		diagnostics = {
			"diagnostics",
			sources = { "nvim_diagnostic" },
			symbols = { error = " ", warn = " ", info = " ", hint = "󰌵 " },
			diagnostics_color = {
				error = { fg = palette.pastel_red },
				warn = { fg = palette.pastel_yellow },
				info = { fg = palette.pastel_green },
				hint = { fg = palette.pastel_cyan },
			},
		},

		filetype = {
			"filetype",
			colored = true,
			icon_only = true,
			separator = ""
		},

		filename = {
			"filename",
			file_status = true,
			path = 0,
			symbols = {
				modified = "[+]",
				readonly = "[Readonly]",
				unnamed = "[Unnamed]",
				newfile = "[New]"
			},
			separator = ""
		},

		filesize = {
			function()
				local file = vim.fn.expand('%:p')
					if file == nil or #file == 0 then
					return ''
				end

				local size = vim.fn.getfsize(file)
					if size <= 0 then
					return ''
				end

				local suffixes = { 'Bytes', 'Kb', 'Mb', 'Gb' }

				local i = 1
					while size > 1024 and i < #suffixes do
					size = size / 1024
					i = i + 1
				end

				local format = i == 1 and '%d %s' or '%.1f %s'
				return string.format(format, size, suffixes[i])
			end
		},

		separator = {
			function ()
				return "%="
			end,
			separator = ""
		},

		searchcount = {
			"searchcount",
			separator = ""
		},

		git_branch = {
			"branch",
			icon = "󰊢",
			color = { fg = palette.pastel_orange, gui = "bold" },
		},

		git_diff = {
			"diff",
			symbols = { added = "+", modified = "~", removed = "-" },
			diff_color = {
				added = { fg = palette.pastel_green },
				modified = { fg = palette.pastel_orange },
				removed = { fg = palette.pastel_red },
			},
		},

		encoding = {
			"encoding",
			fmt = string.upper,
		},

		fileformat = {
			"fileformat",
			symbols = {
				unix = "UNIX",
				dos = "DOS",
				mac = "MAC"
			}
		},
	}

	require("lualine").setup({
		options = {
			theme = "auto",

			disabled_filetypes = {
				"alpha"
			},

			refresh = {
				statusline = 200
			},

			component_separators = "|",

			section_separators = {
				left = "",
				right = ""
			}
		},

		winbar = {
			lualine_a = {
				"navic",
				color_correction = nil,
				navic_opts = nil
			},

			lualine_z = {
				"location",
				"progress",
			}
		},

		sections = {
			lualine_a = {
				sections.datetime
			},

			lualine_b = {
				sections.lsp_name,
				sections.diagnostics
			},

			lualine_c = {
				sections.filetype,
				sections.filename,
			},

			lualine_x = {
				sections.filesize
			},

			lualine_y = {
				sections.git_branch,
				sections.git_diff
			},

			lualine_z = {
				sections.encoding,
				sections.fileformat
			}
		},
	})

end

return M
