local M = {}


-- Plugins
M.plugins = {
  { 'wbthomason/packer.nvim' }, -- Packer 
  { 'nvim-lua/plenary.nvim' }, -- Plenary
  { 'nvim-telescope/telescope.nvim' }, -- Telescope
  { 'nvim-telescope/telescope-file-browser.nvim' },
  -- Color schemes
  {
    'catppuccin/nvim',
    config = require('verse.plugin_configs.catppuccino').load,
    as = 'catppuccin',
  },
  { 'folke/tokyonight.nvim' },
  { 'savq/melange' },
  { 'sainnhe/gruvbox-material' },
  { 'sainnhe/everforest' },
  { 'glepnir/zephyr-nvim' },
  { 'liuchengxu/space-vim-dark' },
  { 'EdenEast/nightfox.nvim' },
  -- Mimic themes
  { 'ofirgall/ofirkai.nvim' }, -- sublime
  { 'doums/darcula' }, -- pycharm
  { 'tomasiser/vim-code-dark' }, -- vs
  { 'rafamadriz/neon' }, -- kate
  { 'ful1e5/onedark.nvim' }, -- atom
  -- Dashboard
  {
    'glepnir/dashboard-nvim',
    config = require('verse.plugin_configs.dashboard').load,
  },
  -- Tabs
  {
    'romgrk/barbar.nvim',
    requires = "nvim-tree/nvim-web-devicons",
    config = function() require('bufferline').setup {
      --icon_pinned = '',
      --icon_close_tab_modified = '',
    } end,
  },
  -- easier keybinds
  {
    "folke/which-key.nvim",
    config = function() require("which-key").setup() end,
  },
  -- Tree + Icons
  {
    'nvim-tree/nvim-tree.lua',
    config = require('verse.plugin_configs.nvim-tree').load,
    requires = { 'nvim-tree/nvim-web-devicons'},
  },
  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    config = require('verse.plugin_configs.treesitter').load,
  },
  -- Build system
  {
    'pianocomposer321/yabs.nvim',
    config = require('verse.plugin_configs.yabs').load,
  },
  -- Package manager for tools (LSP, DAP, etc.)
  {
    'williamboman/mason.nvim',
    config = function()
    require('mason').setup()
    require('mason-lspconfig').setup()
    end,
    requires = { 'williamboman/mason-lspconfig.nvim' },
  },
  -- DAP
  {
    'mfussenegger/nvim-dap',
    config = require('verse.plugin_configs.languageservers').load_dap
  },
  -- DAP UI
  {
    'rcarriga/nvim-dap-ui',
    requires = 'mfussenegger/nvim-dap',
    config = require('verse.plugin_configs.dap-ui').load,
  },
  -- LSP
  {
    'neovim/nvim-lspconfig',
    config = require('verse.plugin_configs.languageservers').load_lsp,
  },
  { 'Issafalcon/lsp-overloads.nvim' }, -- LSP for method overloads
  -- LSP load progress
  {
    'j-hui/fidget.nvim',
    config = function() require('fidget').setup() end,
  },
  { 'tpope/vim-sleuth' }, -- Autoindent
  -- Indentation helper
  {
    'lukas-reineke/indent-blankline.nvim',
    config = require('verse.plugin_configs.indent-blankline').load,
  },
  -- Autocomplete
  {
    'neoclide/coc.nvim',
    branch = 'release',
    config = require('verse.plugin_configs.coq').load,
  },
  -- Terminal windows manager
  {
    'akinsho/toggleterm.nvim',
    config = require('verse.plugin_configs.toggleterm').load,
  },
  { 'kevinhwang91/nvim-bqf' }, -- Better quickfix window
  -- Git integration
  {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup() end,
  },
  -- Statusline
  {
    'windwp/windline.nvim',
    config = require('verse.plugin_configs.windline').load,
  },
  -- Colour codes
  {
    'uga-rosa/ccc.nvim',
    config = require('verse.plugin_configs.ccc').load,
  },
  -- Scrollbar
  {
    'petertriho/nvim-scrollbar',
    config = require('verse.plugin_configs.scrollbar').load,
    requires = { 'kevinhwang91/nvim-hlslens' },
  },
  -- Annotations
  {
    'danymat/neogen',
    config = function() require('neogen').setup() end,
  },
  -- Errors
  {
    'folke/trouble.nvim',
    config = function() require('trouble').setup{
    mode = 'quickfix',
    auto_open = 'true',
    } end,
  },
  -- Markdown previewer
  {
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn["mkdp#util#install"]() end,
  },
  { 'folke/neodev.nvim' }, -- Nvim plugin development
  { 'folke/neoconf.nvim' },
  -- Autoclose brackets
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup() end
  },
  -- Dim inactive windows
  {
    'levouh/tint.nvim',
    config = function() require('tint').setup() end,
  },
  -- Highlight ranges
  {
    'winston0410/range-highlight.nvim',
    requires = 'winston0410/cmd-parser.nvim',
    config = function() require('range-highlight').setup() end,
  },
  -- Tranparent neovim
  {
    'xiyaowong/nvim-transparent',
  },
  -- Dim inactive code
  {
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
    },
    } end,
  },
  { 'stevearc/dressing.nvim' }, -- Icon picker
  {
    "ziontee113/icon-picker.nvim",
    config = function() require("icon-picker").setup {
      disable_legacy_commands = true
    } end,
  },
  -- Discord rich presence
  {
    'andweeb/presence.nvim',
    config = require("verse.plugin_configs.presence").load
  },
  { 'cbochs/grapple.nvim' }, -- Tag system
  -- Better marks
  {
    'chentoast/marks.nvim',
    config = function() require("marks").setup() end,
  },
  { 'xiyaowong/link-visitor.nvim' }, -- Open links
  -- TODO comments
  {
    'folke/todo-comments.nvim',
    config = function() require("todo-comments").setup() end,
  },
  {
    'rcarriga/nvim-notify',
    config = function() require'notify'.setup {
      backgroud_colour = '#000000',
    }
    end,
  }, -- Better notifications
  -- nvim-dap nvim-dap-ui <-> Telescope-dap persistent-breakpoints todo-breakpoints | nvim-lightbulb lspkind
}


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

    for _,v in ipairs(M.plugins) do
      use(v)
    end

    local fn = vim.fn
    local vl = vim.loop
    local separator = vl.os_uname().version:match "Windows" and "\\" or "/"
    local file_path = table.concat({vim.fn.stdpath("config"), "lua", "user_config.lua"}, separator)

    if require("verse.misc_helper").user_config_exists() then
      local user_plugins = require("user_config").plugins

      for _, v in pairs(user_plugins) do
        use(v)
      end
    end

    -- Bootstrap
    if require_bootstrap then
      print "Syncing"
      require('packer').sync()
    end
  end)
end

return M
