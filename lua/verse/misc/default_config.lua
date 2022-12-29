Default = {}

-- Default vim options
function Default:main_options()
  vim.cmd([[syntax off]])
  vim.cmd([[filetype plugin indent on]])
  vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")

  vim.o.number = true
  vim.o.encoding = "utf-8"

  vim.o.backspace = "indent,eol,start"
  vim.o.autoindent = true
  vim.o.tabstop = 4
  vim.o.softtabstop = 4
  vim.o.expandtab = false
  vim.o.shiftwidth = 4

  vim.o.textwidth = 0
  vim.o.title = true

  vim.o.splitbelow = true
  vim.o.splitright = true
  vim.o.incsearch = true
  vim.o.laststatus = 2
  vim.o.showmode = false
  vim.o.signcolumn = "yes"

  vim.o.startofline = true
  vim.o.errorbells = false
  vim.o.swapfile = false
  vim.o.mouse = "a"
  vim.o.confirm = true

  vim.o.cursorline = true
  vim.o.cursorcolumn = true

  vim.o.foldmethod = "expr"
  vim.o.foldtext=[[getline(v:foldstart).'...'.trim(getline(v:foldend))]]
  vim.o.foldlevelstart=99

  vim.o.guifont="FiraCode:style=Regular"
  vim.o.termguicolors = true

  vim.g.mapleader = " "
  vim.g.maplocalleader = " "
  vim.g.cursorhold_updatetime = 1000
  vim.g.indentLine_fileTypeExclude = { "dashboard" }
  vim.g.better_whitespace_filetypes_blacklist = { "dashboard", "packer" }
end


-- Default autocmds
function Default:autocmds()
  vim.cmd [[
    augroup VerseDefaults
      autocmd!
      au BufReadPre * :COQnow -s
      au BufWritePost startup.lua source <afile> | PackerCompile
      au VimEnter * lua require'verse.post_startup'.load()
    augroup END
  ]]
end


-- Default keybinds
function Default:keybinds()
  local exists, wk = pcall(require, "which-key")

  if not exists then return 1 end

  wk.register {
    ["<F1>"] = { function() vim.cmd("silent only") vim.cmd("Dashboard") end, "Open the dashboard in fullscreen" },
    ["<F2>"] = { "<cmd>NvimTreeToggle<cr>", "Toggle file tree" },
    ["<F3>"] = { "<cmd>Telescope buffers<cr>", "Open buffer" },

    -- Git
    ["<leader>g"] = {
      name = "Git",
      b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle git line blame" },
      d = { "<cmd>Gitsigns diffthis<cr>", "View git diff" },
    },

    -- Files
    ["<leader>f"] = {
      name = "Files",
      n = { "<cmd>DashboardNewFile<cr>", "Create a new file" },
      o = { "<cmd>Telescope oldfiles<cr>", "Open recent file" },
      f = { "<cmd>Telescope find_files<cr>", "Find file" },
    },

    -- Easier window switch
    ["<C-H>"] = { "<C-w>h", "Move to the left window" },
    ["<C-J>"] = { "<C-w>j", "Move to the lower window" },
    ["<C-K>"] = { "<C-w>k", "Move to the higher window" },
    ["<C-L>"] = { "<C-w>l", "Move to the right window" },
    ["<C-Q>"] = { "<C-w>q", "Quit current window" },

    -- Zoom
    ["<C-Up>"] = { "<cmd>resize -2<cr>", "" },
    ["<C-Down>"] = { "<cmd>resize +2<cr>", "" },
    ["<C-Left>"] = { "<cmd>vertical resize -2<cr>", "" },
    ["<C-Right>"] = { "<cmd>vertical resize +2<cr>", "" },

    -- Force
    ["<C-S>"] = { "<cmd>w!<cr>", "Force write" },
    ["<leader>qa"] = { "<cmd>qa!<cr>", "Force exit" },

    -- Tabs
    ["<leader>l"] = { "<cmd>BufferNext<cr>", "Switch to the next buffer" },
    ["<leader>h"] = { "<cmd>BufferPrevious<cr>", "Switch to the previous buffer" },
    ["<leader>c"] = { "<cmd>BufferClose<cr>", "Close current buffer" },
    ["<leader>>"] = { "<cmd>BufferMoveNext<cr>", "Move current buffer to the right" },
    ["<leader><"] = { "<cmd>BufferPrevious<cr>", "Move current buffer to the left" },
    ["<leader>pp"] = { "<cmd>BufferPick<cr>", "Pick the buffer" },
    ["<leader>pn"] = { "<cmd>BufferPin<cr>", "Pin the buffer" },

    -- Other
    ["<leader>tw"] = { "<cmd>Twilight<cr>", "Toggle Twilight" },
    ["<leader>tp"] = { "<cmd>TransparentToggle<cr>", "Toggle transparency" },
    ["<leader>tc"] = { "<cmd>Telescope colorscheme<cr>", "Change colorscheme" },
    ["<leader>td"] = { "<cmd>TodoTelescope<cr>", "Search TODO's" },
  }

  local yabs_exists, yabs = pcall(require, "yabs")
  if yabs_exists then
    wk.register {
      ["<F5>"] = { function() yabs:run_task("run") end, "Run" },
      ["<F6>"] = { function() yabs:run_task("build_and_run") end, "Build and run" },
    }
  end
end

return Default
