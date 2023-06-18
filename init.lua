if vim.fn.has("nvim-0.9") ~= 1 then
	vim.notify("Your Neovim version is not supported by Verse, please update to v0.9+", vim.log.levels.WARN)
	vim.wait(5000, function()
		return false
	end)
	vim.cmd("cquit")
end

require("verse.core.startup").load()
