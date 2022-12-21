-- Packer installation
local check_for_packer = function()
	local fn = vim.fn
	local separator = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
	local install_path = table.concat({vim.fn.stdpath("data"), "site", "pack", "packer", "start", "packer.nvim"}, separator)
	if fn.empty(fn.glob(install_path)) > 0 then
		print "Packer not found. Installing..."
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd ([[packadd packer.nvim]])
		return true
	end
	return false
end


local requires_bootstrap = check_for_packer()


-- Plugins
return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'


	-- Plenary
	use 'nvim-lua/plenary.nvim'


	-- Telescope
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'


	-- Color schemes
	use {
		'catppuccin/nvim',
		config = function() require('verse.plugin_configs.catppuccino') end,
		as = 'catppuccin',
	}
	use 'folke/tokyonight.nvim'
	use 'savq/melange'
	use 'sainnhe/gruvbox-material'
	use 'sainnhe/everforest'
	use 'glepnir/zephyr-nvim'
	use 'liuchengxu/space-vim-dark'
	-- Mimic themes
	use 'ofirgall/ofirkai.nvim' -- sublime
	use 'doums/darcula' -- pycharm
	use 'tomasiser/vim-code-dark' -- vs
	use 'rafamadriz/neon' -- kate
	use 'ful1e5/onedark.nvim' -- atom


	-- Dashboard
	use {
		'glepnir/dashboard-nvim',
		config = function() require('verse.plugin_configs.dashboard') end,
	}


	-- Tabs
	use {
		'romgrk/barbar.nvim',
		wants = "nvim-tree/nvim-web-devicons",
	}


	-- easier keybinds
	use 'b0o/mapx.nvim'


	-- Tree + Icons
	use {
		'nvim-tree/nvim-tree.lua',
		config = function() require('verse.plugin_configs.nvim-tree') end,
		requires = { 'nvim-tree/nvim-web-devicons'},
	}


	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		config = function() require('verse.plugin_configs.treesitter') end,
	}


	-- Build system
	use {
		'pianocomposer321/yabs.nvim',
		config = function() require('verse.plugin_configs.yabs') end,
	}


	-- LSP
	use {
		'neovim/nvim-lspconfig',
		config = function()
			require('verse.plugin_configs.languageservers')
		end,
	}


	-- LSP for method overloads
	use 'Issafalcon/lsp-overloads.nvim'


	-- Package manager for tools (LSP, DAP, etc.)
	use {
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup()
			require('mason-lspconfig').setup()
		end,
		requires = { 'williamboman/mason-lspconfig.nvim' },
	}


	-- LSP load progress
	use {
		'j-hui/fidget.nvim',
		config = function() require('fidget').setup() end,
	}


	-- Autoindent
	use 'tpope/vim-sleuth'


	-- Indentation helper
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function() require('verse.plugin_configs.indent-blankline') end,
	}


	-- Autocomplete
	use {
		'ms-jpq/coq_nvim',
		config = function() require('verse.plugin_configs.coq') end,
		requires = { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
	}


	-- Terminal windows manager
	use {
		'akinsho/toggleterm.nvim',
		config = function() require('verse.plugin_configs.toggleterm') end,
	}


	-- Better quickfix window
	use 'kevinhwang91/nvim-bqf'


	-- Statusline
	use {
		'nvim-lualine/lualine.nvim',
		config = function() require('verse.plugin_configs.lualine') end,
	}


	-- Colour codes
	use {
		'norcalli/nvim-colorizer.lua',
		config = function() require('colorizer').setup() end,
	}


	-- Scrollbar
	use {
		'petertriho/nvim-scrollbar',
		config = function() require('verse.plugin_configs.scrollbar') end,
		requires = { 'kevinhwang91/nvim-hlslens' },
	}


	-- Annotations
	use {
		'danymat/neogen',
		config = function() require('neogen').setup() end,
	}


	-- Errors
	use {
		'folke/trouble.nvim',
		config = function() require('trouble').setup{
			mode = 'quickfix',
			auto_open = 'true',
		}
		end,
	}


	-- Autoclose tags
	use 'windwp/nvim-ts-autotag'


	-- Markdown previewer
	use {
		'iamcco/markdown-preview.nvim',
		run = function() vim.fn["mkdp#util#install"]() end,
	}


	-- Nvim plugin development
	use 'folke/neodev.nvim'
	use 'folke/neoconf.nvim'


	-- Bootstrap
	if require_bootstrap then
		require('packer').sync()
	end
end)
