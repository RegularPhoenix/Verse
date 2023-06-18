local M = {}

local main_plugins = {
	--Core plugins--
	{ "nvim-lua/plenary.nvim", lazy = true }, -- Library, essential for many plugins
	{ "nvim-tree/nvim-web-devicons", lazy = true }, -- Icons, used by many plugins
	{
		"lewis6991/gitsigns.nvim", -- Git integration
		config = function()
			require("gitsigns").setup()
		end,
	},

	--Language Server Protocol--
	{ "folke/neodev.nvim" },
	{
		"neovim/nvim-lspconfig", -- LSP Config
		config = require("verse.core.config.plugins.lsp").load,
	},
	{
		"williamboman/mason.nvim", -- Manager for tools (LSP, DAP, Linters)
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
		end,
		dependencies = { "williamboman/mason-lspconfig.nvim" },
	},

	--Debug Adapter protocol--
	{
		"mfussenegger/nvim-dap", -- DAP
		config = require("verse.core.config.plugins.dap").load,
	},
	{
		"rcarriga/nvim-dap-ui", -- DAP UI
		requires = "mfussenegger/nvim-dap",
		config = require("verse.core.config.plugins.dap-ui").load,
	},

	--Code completion--
	{ "neoclide/coc.nvim", branch = "release" }, -- Code completion
	{ "tpope/vim-sleuth" }, -- Autoindent

	--Vim improvement/tools--
	{
		"folke/which-key.nvim", -- Improved keybinds
		config = function()
			require("which-key").setup()
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter", -- Improved code highlight
		config = require("verse.core.config.plugins.treesitter").load,
	},
	{
		"folke/trouble.nvim", -- Error list
		opts = {
			mode = "workspace_diagnostics",
			use_diagnostic_signs = true,
			auto_open = true,
			auto_close = true,
			height = 7,
		},
	},
	{
		"windwp/nvim-autopairs", -- Autopairs
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"rcarriga/nvim-notify", -- Better notifications
		config = function()
			require("notify").setup({
				backgroud_colour = "#000000",
			})
		end,
	},
	{ "xiyaowong/link-visitor.nvim" }, -- Open links
	{
		"andweeb/presence.nvim", -- Discord rich presence
		config = require("verse.core.config.plugins.discord-rp").load,
	},
	{
		"SmiteshP/nvim-navbuddy", -- Breadcrumbs navigation
		dependencies = { "MunifTanjim/nui.nvim" },
	},

	--Style!--
	{ "folke/tokyonight.nvim", priority = 1000 }, -- Colorscheme
	{ "nvim-telescope/telescope.nvim" }, -- Fuzzy finder
	{ "nvim-telescope/telescope-file-browser.nvim" },
	{
		"goolord/alpha-nvim", -- Dashboard
		event = "VimEnter",
		opts = require("verse.core.config.plugins.dashboard").opts,
		config = require("verse.core.config.plugins.dashboard").load,
	},
	{
		"lukas-reineke/indent-blankline.nvim", -- Indentation helper
		config = require("verse.core.config.plugins.indent-blankline").load,
	},
	{
		"romgrk/barbar.nvim", -- Tabline
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			icons = {
				modified = { button = "" },
				pinned = { button = "", filename = true },
			},
		},
		version = "^1.0.0",
	},
	{
		"nvim-lualine/lualine.nvim", -- Lualine
		config = require("verse.core.config.plugins.lualine").load,
	},
	{
		"nvim-tree/nvim-tree.lua", -- File explorer
		config = require("verse.core.config.plugins.nvim-tree").load,
	},
	{
		"j-hui/fidget.nvim", -- LSP Progress UI
		tag = "legacy",
		config = function()
			require("fidget").setup()
		end,
	},
	{
		"uga-rosa/ccc.nvim", -- Colour codes
		config = function()
			require("ccc").setup({ highlighter = { auto_enable = true } })
		end,
	},
	{
		"levouh/tint.nvim", -- Dim inactive windows
		config = function()
			require("tint").setup({ tint = -50 })
		end,
	},
	{
		"winston0410/range-highlight.nvim", -- Highlight ranges
		dependencies = { "winston0410/cmd-parser.nvim" },
		config = function()
			require("range-highlight").setup()
		end,
	},
	{
		"folke/twilight.nvim", -- Dim inactive code
		config = function()
			require("twilight").setup({
				expand = {
					"function",
					"method",
					"table",
					"if_statement",
					"method_definition",
					"method_declaration",
					"function_declaration",
				},
			})
		end,
	},
	{ "stevearc/dressing.nvim" }, -- Better vim interface
	{
		"ziontee113/icon-picker.nvim", -- Icon picker
		config = function()
			require("icon-picker").setup({
				disable_legacy_commands = true,
			})
		end,
	},
	{
		"folke/todo-comments.nvim", -- Todo comments
		config = function()
			require("todo-comments").setup()
		end,
	},
	{ "SmiteshP/nvim-navic" },

	--[[
	 TODO: Possible changes--
	 + hentoast/marks.nvim
	 + bochs/grapple.nvim
	 + nvim-neotest/neotest
	 + jose-elias-alvarez/null-ls
	 romgrk/barbar -> akinsho/bufferline
	 nvim-tree/nvim-tree -> nvim-neo-tree/neo-tree
	 glepnir/dashboard -?-> goolord/alpha-nvim
	 neoclide/coc-nvim -?-> hrsh7th/nvim-cmp 
	--]]
}

function M.load()
	M.try_load("opts")

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
	require("lazy").setup(main_plugins)

	require("tokyonight").load()

	M.try_load("keybinds")
	M.try_load("autocmds")
end

function M.try_load(module)
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

return M
