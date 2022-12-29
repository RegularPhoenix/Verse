My = {}

-- aperture, apex, mimic, mimic-atom, mimic-kate, mimic-pycharm, mimic-sublime, mimic-vs
--My.theme = "mimic"


-- bubble, bubble2, evil_line, airline, airline_anim, vscode, basic, wind, airline_luffy
--My.statusline = "bubble"

-- Example keybinds
My.keybinds = {
  -- ["<leader>oo"] = { "<cmd>ShenzhenSolitaireNewGame<cr>", "OK" },
}

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

return My
