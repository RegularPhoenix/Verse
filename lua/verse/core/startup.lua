local M = {}

function M.load_plugins()
	--Plugin manager--
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
		print("Installing lazy-nvim plugin manager...")
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable", -- latest stable release
			lazypath,
		})
	end
	vim.opt.rtp:prepend(lazypath)
	require("lazy").setup({
		{ import = "verse.core.plugins" },
		{ import = "userconfig.plugins" }
	})
end

return M
