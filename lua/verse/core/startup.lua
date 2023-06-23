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

	local opts = {
		{ import = "verse.core.plugins" }
	}

	local util = require("verse.core.util")
	if util.path_exists(
		util.concat_paths({
			vim.fn.stdpath("config"),
			"lua",
			"userconfig",
			"plugins"
		})
	) then
		table.insert(opts, { import = "userconfig.plugins" })
	end

	require("lazy").setup(opts)
end

return M
