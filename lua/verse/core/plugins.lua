return {
	--Core plugins--
	{ "nvim-lua/plenary.nvim", lazy = true }, -- Library
	{ "nvim-tree/nvim-web-devicons", lazy = true }, -- Icons
	{ "MunifTanjim/nui.nvim", lazy = true }, -- Better UI
	{
		"lewis6991/gitsigns.nvim", -- Git integration
		config = function()
			require("gitsigns").setup()
		end,
	},
	{ "tpope/vim-fugitive" }, -- Even more git integration

	--Language Server Protocol--
	{ "folke/neodev.nvim" },
	{
		"neovim/nvim-lspconfig", -- LSP Config
		config = require("verse.core.config.plugins.lsp").load,
	},
	{
		"williamboman/mason.nvim", -- Manager for tools (LSP, DAP, Linters)
		opts = { ensure_installed = require("userconfig.verse").language_servers },
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
		end,
		dependencies = { "williamboman/mason-lspconfig.nvim" },
	},
	{ "jose-elias-alvarez/null-ls.nvim"} , -- Null language server

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
	{ "xiyaowong/link-visitor.nvim", lazy = true }, -- Open links
	{
		"andweeb/presence.nvim", -- Discord rich presence
		config = require("verse.core.config.plugins.discord-rp").load,
	},
	{ "SmiteshP/nvim-navbuddy" }, -- Breadcrumbs navigation
	{
		"nvim-neotest/neotest", -- Tests integration
		dependencies = { "antoinemadec/FixCursorHold.nvim" },
		config = function()
			local test_runners = {}
			for _, runner in pairs(require("userconfig.verse").test_runners) do
				table.insert(test_runners, require(runner))
			end

			require("neotest").setup({
				adapters = test_runners
			})
		end
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
		"akinsho/bufferline.nvim", -- Tabline
		event = "VimEnter",
		version = "*",
		config = function() require("bufferline").setup({ options = { separator_style = "slant" } }) end
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
		lazy = true,
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
	{ "rbong/vim-flog" }

	--[[
	 TODO: Possible changes--
	 + hentoast/marks.nvim
	 + bochs/grapple.nvim
	 neoclide/coc-nvim -?-> hrsh7th/nvim-cmp 
	--]]
}
