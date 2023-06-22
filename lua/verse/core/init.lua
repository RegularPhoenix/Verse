local function try_require(module)
	local success, _ = pcall(require, "verse.core.config." .. module)

	if not success then
		vim.notify("Failed to load core " .. module, vim.log.levels.ERROR)
		return 1
	end

	success, _ = pcall(require, "userconfig." .. module)

	if not success then
		vim.notify("Failed to load user " .. module .. "! Check your config for errors.", vim.log.levels.WARN)
		return 1
	end
end

local function try_load(module)
	local success, out = pcall(require, module)
	if not success then
		return 1
	else
		out.load()
		return 0
	end
end

try_require("opts")

local user_colorscheme = require("userconfig.verse").colorscheme
local success = try_load(user_colorscheme) -- TODO: Change to user colorscheme

require("verse.core.startup").load_plugins()

local exists, notify = pcall(require, "notify")
if exists then
	vim.notify = notify
end

if success ~= 0 then
	success = try_load(user_colorscheme)

	if success ~= 0 then
		vim.notify("Failed to load user colorscheme, falling back to tokyonight.", vim.log.levels.WARN)
		success = try_load("tokyonight")

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
