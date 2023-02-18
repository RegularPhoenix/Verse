My = {}

-- aperture, apex, mimic, mimic-atom, mimic-kate, mimic-pycharm, mimic-sublime, mimic-vs, kaspar, snowglobe
--My.theme = "snowglobe"


-- bubble, bubble2, evil_line, airline, airline_anim, vscode, basic, wind, airline_luffy
--My.statusline = "bubble"

-- Example keybinds
My.keybinds = {

}

My.lsp = {
  -- Must be installed first (You can use mason tool manager for that)
  --"pyright",
}

-- Example vim options
function My:main_options()

end


-- Example autocmds
function My:autocmds()
  --vim.cmd [[augroup daprepl
  --  autocmd FileType dap-repl set nobuflisted
  --augroup end]]
end


function My.dap(dap, packages_path)
  -- Must be installed first (You can use mason tool manager for that)
  --dap.adapters.python = {
  --  type = 'executable',
  --  command = packages_path .. '/debugpy/venv/bin/python',
  --  args = { '-m', 'debugpy.adapter' }
  --}
  --dap.configurations.python = {
  --  {
  --    type = 'python';
  --    request = 'launch';
  --    name = 'Launch file';
  --    program = '${file}';
  --    pythonPath = function()
  --      return '/usr/bin/python'
  --    end;
  --  },
  --}
end

My.plugins = {
  -- { 'rktjmp/shenzhen-solitaire.nvim' },
}

return My
