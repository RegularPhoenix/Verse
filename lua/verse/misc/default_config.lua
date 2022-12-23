Default = {}

-- aperture, apex, mimic, mimic-atom, mimic-kate, mimic-pycharm, mimic-sublime, mimic-vs
Default.theme = "mimic"


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
    augroup END
  ]]
end


-- Default keybinds
function Default:keybinds()
  nnoremap("<F1>", ":Dashboard<CR>", "silent")
  nnoremap("<F2>", ":NvimTreeToggle<CR>", "silent")
  nnoremap("<F3>", ":Telescope buffers<CR>", "silent")
  nnoremap("<C-F4>", ':TermExec direction=float cmd="cd %:h"<CR>', "silent")

  local yabs = require("yabs")
  nnoremap("<F5>", function() yabs:run_task("run") end, "silent")
  nnoremap("<F6>", function() yabs:run_task("build_and_run") end, "silent")

  -- Easier window switch
  nmap("<C-H>", "<C-w>h")
  nmap("<C-J>", "<C-w>j")
  nmap("<C-K>", "<C-w>k")
  nmap("<C-L>", "<C-w>l")

  -- Zoom
  nnoremap("<C-Up>", ":resize -2<CR>", "silent")
  nnoremap("<C-Down>", ":resize +2<CR>", "silent")
  nnoremap("<C-Left>", ":vertical resize -2<CR>", "silent")
  nnoremap("<C-Right>", ":vertical resize +2<CR>", "silent")

  -- Force
  nnoremap("<C-S>", ":w!<CR>", "silent")
  nnoremap("<C-Q>", ":q!<CR>", "silent")

  nnoremap("<leader>fn", ":DashboardNewFile<CR>", "silent")

  -- Tabs
  nnoremap("<leader>l", ":BufferNext<CR>", "silent")
  nnoremap("<leader>h", ":BufferPrevious<CR>", "silent")
  nnoremap("<leader>pp", ":BufferPick<CR>", "silent")
  nnoremap("<leader>p", ":BufferPin<CR>", "silent")
  nnoremap("<leader>c", ":BufferClose<CR>", "silent")
  nnoremap("<leader>>", ":BufferMoveNext<CR>", "silent")
  nnoremap("<leader><", ":BufferMovePrevious<CR>", "silent")
end

return Default
