My = {}

-- aperture, apex, mimic, mimic-atom, mimic-kate, mimic-pycharm, mimic-sublime, mimic-vs
--My.theme = "mimic"


-- bubble, bubble2, evil_line, airline, airline_anim, vscode, basic, wind, airline_luffy
--Default.statusline = "bubble"

-- Example vim options
function My:main_options()
  --vim.o.expandtab = false
  --vim.o.shiftwidth = 4
end


-- Example autocmds
function My:autocmds()
  --vim.cmd [[
  --  augroup MyCommands
  --  	autocmd!
  --  	au VimEnter * :COQnow -s
  --  augroup END
  --]]
end


-- Example keybinds
function My:keybinds()
  --nnoremap("<C-F4>", ':TermExec direction=float cmd="cd %:h"<CR>', "silent")
  
  --local yabs = require("yabs")
  --nnoremap("<F5>", function() yabs:run_task("run") end, "silent")
  --nnoremap("<F6>", function() yabs:run_task("build_and_run") end, "silent")
end

return My
