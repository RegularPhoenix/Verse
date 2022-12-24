local M = {}


-- Plugins
function M.load()
  local done, impatient = pcall(require, "impatient")

  if done then impatient.enable_profile() end

  local fn = vim.fn
  local separator = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
  local install_path = table.concat({vim.fn.stdpath("data"), "site", "pack", "packer", "start", "packer.nvim"}, separator)

  if fn.empty(fn.glob(install_path)) > 0 then
    print "Packer not found. Installing..."
    require_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd ([[packadd packer.nvim]])
  end

  local present, packer = pcall(require, "packer")

  if not present then
    return
  end

  return packer.startup(function(use)
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
      config = require('verse.plugin_configs.catppuccino').load,
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
      config = require('verse.plugin_configs.dashboard').load,
    }


    -- Tabs
    use {
      'romgrk/barbar.nvim',
      requires = "nvim-tree/nvim-web-devicons",
      config = function() require('bufferline').setup {
        icon_pinned = '',
        icon_close_tab_modified = '',
      } end,
    }


    -- easier keybinds
    use 'b0o/mapx.nvim'


    -- Tree + Icons
    use {
      'nvim-tree/nvim-tree.lua',
      config = require('verse.plugin_configs.nvim-tree').load,
      requires = { 'nvim-tree/nvim-web-devicons'},
    }


    -- Treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      config = require('verse.plugin_configs.treesitter').load,
    }


    -- Build system
    use {
      'pianocomposer321/yabs.nvim',
      config = require('verse.plugin_configs.yabs').load,
    }


    -- LSP
    use {
      'neovim/nvim-lspconfig',
      config = require('verse.plugin_configs.languageservers').load,
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
      config = require('verse.plugin_configs.indent-blankline').load,
    }


    -- Autocomplete
    use {
      'ms-jpq/coq_nvim',
      config = require('verse.plugin_configs.coq').load,
      requires = { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
    }


    -- Terminal windows manager
    use {
      'akinsho/toggleterm.nvim',
      config = require('verse.plugin_configs.toggleterm').load,
    }


    -- Better quickfix window
    use 'kevinhwang91/nvim-bqf'


    -- Statusline
    use {
      'windwp/windline.nvim',
      config = require('verse.plugin_configs.windline').load,
    }


    -- Colour codes
    use {
      'uga-rosa/ccc.nvim',
      config = require('verse.plugin_configs.ccc').load,
    }


    -- Scrollbar
    use {
      'petertriho/nvim-scrollbar',
      config = require('verse.plugin_configs.scrollbar').load,
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
      } end,
    }


    -- Markdown previewer
    use {
      'iamcco/markdown-preview.nvim',
      run = function() vim.fn["mkdp#util#install"]() end,
    }


    -- Nvim plugin development
    use 'folke/neodev.nvim'
    use 'folke/neoconf.nvim'


    -- Autoclose brackets
    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup() end
    }


    -- Dim inactive windows
    use {
      'levouh/tint.nvim',
      config = function() require('tint').setup() end,
    }


    -- Highlight ranges
    use {
      'winston0410/range-highlight.nvim',
      requires = 'winston0410/cmd-parser.nvim',
      config = function() require('range-highlight').setup() end,
    }


    -- Tranparent neovim
    use {
      'xiyaowong/nvim-transparent',
      config = function() require("transparent").setup {
        enable = false,
      } end,
    }


    -- Dim inactive code
    use {
      "folke/twilight.nvim",
      config = function() require("twilight").setup {
        expand = {
          "function",
          "method",
          "table",
          "if_statement",
          "method_definition",
          "method_declaration",
          "function_declaration"
        }
      } end,
    }


    -- Icon picker
    use "stevearc/dressing.nvim"
    use {
      "ziontee113/icon-picker.nvim",
      config = function() require("icon-picker").setup {
          disable_legacy_commands = true
      } end,
    }


    -- Discord rich presence
    use {
      'andweeb/presence.nvim',
      config = require("verse.plugin_configs.presence").load
    }

    
    -- Tag system
    use "cbochs/grapple.nvim"


    -- Better marks
    use {
      'chentoast/marks.nvim',
      config = function() require("marks").setup() end,
    }


    -- Bootstrap
    if require_bootstrap then
      print "Syncing"
      require('packer').sync()
    end
  end)
end

return M
