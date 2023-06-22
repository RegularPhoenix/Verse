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
vim.o.laststatus = 3

vim.o.foldmethod = "expr"
vim.o.foldtext=[[getline(v:foldstart).'...'.trim(getline(v:foldend))]]
vim.o.foldlevelstart=99

vim.o.guifont="FiraCode:style=Regular"
vim.o.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.cursorhold_updatetime = 1000
vim.g.indentLine_fileTypeExclude = { "dashboard" }
vim.g.better_whitespace_filetypes_blacklist = { "dashboard" }
