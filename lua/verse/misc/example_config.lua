My = {}

-- Example vim options
function My:main_options()
  vim.o.autoindent = true
  vim.o.tabstop = 4
  vim.o.softtabstop = 0
  vim.o.expandtab = false
  vim.o.shiftwidth = 4
end


-- Example autocmds
function My:autocmds()
  vim.cmd [[
	augroup Vimspector
		autocmd!
		au VimEnter * :COQnow -s
		au VimEnter * :colorscheme gruvbox-material
    augroup END
  ]]
end

function My:keybinds()
  nnoremap("<F1>", ":Dashboard<CR>", "silent")
  nnoremap("<F2>", ":NvimTreeToggle<CR>", "silent")
  nnoremap("<F3>", ":Telescope buffers<CR>", "silent")
  nnoremap("<C-F4>", ':TermExec direction=float cmd="cd %:h"<CR>', "silent")
  
  local yabs = require("yabs")
  nnoremap("<F5>", function() yabs:run_task("run") end, "silent")
  nnoremap("<F6>", function() yabs:run_task("build_and_run") end, "silent")
end

return My