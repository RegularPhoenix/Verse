if vim.fn.has("nvim-0.9") ~= 1 then
	vim.notify("Your Neovim version is not supported by Verse, please update to v0.9+. Press any key to exit...", vim.log.levels.WARN)
	vim.fn.getchar()
	vim.cmd("cquit")
end

require("verse.core")
