local M = {}

function M.load()
	vim.opt.list = true
	vim.opt.listchars:append("eol:↴")

	require("ibl").setup({
		indent = { char = "▏", tab_char = "▏" },
		exclude = {
			filetypes = {
				"help",
				"dashboard",
				"Trouble",
				"lazy"
			}
		}
	})
end

return M
