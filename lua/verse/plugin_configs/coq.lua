local M = {}

function M.load()
	vim.g.coq_settings = {
		clients = {
			lsp = {
				enabled = true,
				weight_adjust = 1.9,
			},
			buffers = {
				enabled = true,
				weight_adjust = -1.9,
			},
			tree_sitter = {
				enabled = false,
			},
			paths = {
				preview_lines = 4,
			}
		},
		display = {
			preview = {
				border = 'single',
			},
		},
		keymap = {
			recommended = false,
			jump_to_mark = "<c-'><c-'>",
		}
	}
end

return M