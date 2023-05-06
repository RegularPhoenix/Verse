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
      au BufReadPre * :CocEnable
      au BufWritePost startup.lua source <afile> | PackerCompile
      au VimEnter * lua require'verse.post_startup'.load()
    augroup END
  ]]
end

function _G.show_docs()
  local cw = vim.fn.expand('<cword>')
  if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
    vim.api.nvim_command('h ' .. cw)
  elseif vim.api.nvim_eval('coc#rpc#ready()') then
    vim.fn.CocActionAsync('doHover')
  else
    vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
  end
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
      n = { "<cmd>enew<cr>", "Create a new file" },
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
    ["<leader>mp"] = { "<cmd>Mason<cr>", "Open protocol package manager (Mason)" },

    ["<C-A>"] = { "ggVG", "Select all" },
    ["<M-Up>"] = { "ddkkp", "Move line up" },
    ["<M-Down>"] = { "ddp", "Move line down" },

    -- Coc actions
    ["<leader>a"] = {
      name = "Coc actions",
      q = { [[<Plug>(coc-fix-current)]], "Apply quick fix" },
      d = { "<cmd>lua _G.show_docs()<CR>", "Open documentation" },
      r = { [[<Plug>(coc-rename)]], "Rename" },
      f = { [[<Plug>(coc-format-selected)]], "Format selected code" },
    },
    ["<CR>"] = { [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], "Coc select completion" },
  }

  -- Debug
  local dap_exists, dap = pcall(require, "dap")
  if dap_exists then
    wk.register {
      ["<F5>"] = { function() dap.continue() end, "Start debug"},
      ["<F9>"] = { function() dap.toggle_breakpoint() end, "Toggle breakpoint"},
      ["<F10>"] = { function() dap.step_over() end, "Step over"},
      ["<F22>"] = { function() dap.step_into() end, "Step into"},
    }
  end

  local dapui_exists, dapui = pcall(require, "dapui")
  if dapui_exists then
    wk.register {
      ["<F17>"] = { function() dapui.toggle() end, "Toggle DAP UI" },
    }
  end

end

return Default
