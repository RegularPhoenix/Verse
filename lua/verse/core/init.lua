local util = require("verse.core.util")

local function try_require(module)
	local success, _ = pcall(require, "verse.config." .. module)

	if not success then
		vim.notify("Failed to load core " .. module, vim.log.levels.ERROR)
		return 1
	end

	if util.path_exists(util.concat_paths({ vim.fn.stdpath("config"), "lua", "userconfig", module .. ".lua" })) then
		success, _ = pcall(require, "userconfig." .. module)

		if not success then
			vim.notify("Failed to load user " .. module .. "! Check your config for errors.", vim.log.levels.WARN)
			return 1
		end
	else
		return 1
	end
end

local function try_load_colorscheme(colorscheme)
	local success, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
	if success then
		return 0
	else
		return 1
	end
end

try_require("opts")

local user_colorscheme = util.option_or_default("colorscheme", "tokyonight")
local success = try_load_colorscheme(user_colorscheme)

require("verse.core.startup").load_plugins()

local exists, notify = pcall(require, "notify")
if exists then
	vim.notify = notify
end

if success ~= 0 then
	success = try_load_colorscheme(user_colorscheme)

	if success ~= 0 then
		vim.notify("Failed to load user colorscheme (" .. user_colorscheme .. "), falling back to tokyonight.", vim.log.levels.WARN)
		success = try_load_colorscheme("tokyonight")

		if not success then
			vim.notify("Failed to load default colorscheme (tokyonight)!", vim.log.levels.ERROR)
		    vim.cmd("colorscheme habamax")
		end
	end
end

if vim.fn.argc(-1) == 0 then
	vim.api.nvim_create_autocmd("User", {
		group = vim.api.nvim_create_augroup("LazyVim", { clear = true }),
		pattern = "VeryLazy",
		callback = function()
			try_require("keybinds")
			try_require("autocmds")
		end,
    })
else
	try_require("keybinds")
	try_require("autocmds")
end

require("verse.core.commands")
