Kaspar = {}

Kaspar.header = {
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠿⠿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⢿⣷⡄⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⢀⣠⣄⠀⠀⠀⢀⣀⣼⣿⠅⠀⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⢺⣿⣄⣀⣿⡯⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⣰⣾⠟⢿⣷⣴⣾⠿⠟⠋⠉⠀⠀⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡿⠻⠻⠋⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⣤⣿⠟⠁⠀⠀⠙⠋⠀⠀⠀⠀⠀⠀⠀⣿⣗⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⠁⠀⠀⠀⣰⣾⣾⣶⡄',
  '⠀⠀⠀⢾⣿⣇⠀⠀⠀⠀⠀⠀⠀⣠⣴⣶⡆⠀⠀⣿⡿⢿⠿⡿⡿⡿⡿⡿⡾⡿⠁⠀⠀⠀⢸⣿⡃⠀⣹⣿',
  '⠀⠀⠀⠀⢙⣿⡷⠀⠀⠀⠀⣤⣿⠟⠋⠀⢀⣠⣠⣽⣯⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⡿⠿⡿⠿⠃',
  '⠀⠀⠀⢀⣾⡟⠁⠀⠀⢠⣿⡟⠁⢀⣴⣾⠿⠛⠛⠙⠙⠛⠻⢿⣷⣷⣷⣷⣷⣷⣷⣷⣷⡿⠛⠀⠀⠀⠀⠀',
  '⢀⣀⣀⣼⣿⠁⠀⠀⢰⣿⠏⠀⣠⣿⠟⢁⣤⣶⡿⠿⠗⠀⠀⠀⠈⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⣿⡟⠟⠟⠃⠀⠀⠀⣿⡏⠀⢰⣿⠏⢠⣾⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⠄⠀⠀⠀⠀⠀⠀⢀⣠⣠⣀⠀',
  '⣿⡇⠀⠀⠀⠀⠀⢨⣿⡇⠀⣿⣟⠀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⢠⣀⠀⣠⣄⠀⠀⢀⣤⣤⣤⣿⠟⠛⢿⣧',
  '⣿⡇⠀⠀⠀⠀⠀⠀⠋⠀⠀⣻⣷⠀⢿⣷⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿⠀⠈⠃⠀⠀⠀⠋⠋⠋⢿⣧⣤⣾⡟',
  '⣿⣷⣶⣶⡄⠀⠀⠀⠀⠀⠀⠸⣿⣆⠘⢿⣧⣀⠀⠀⠀⠀⣀⣾⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠋⠉⠀',
  '⠈⠁⠁⢹⣿⡀⠀⠀⠀⠀⠀⠀⠙⣿⣦⡈⠙⠿⢿⣾⣾⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠈⢿⣷⡀⠀⠀⠀⠀⠀⠀⠈⠹⢿⣷⣦⣤⣤⣀⠀⠀⠸⠿⠀⠐⢿⠿⡿⢿⠿⡿⣿⣦⡀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⣨⣿⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠋⣿⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣾⣾⣶⣄',
  '⠀⠀⠀⢾⣿⣋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡿⡿⡿⡿⢿⠿⡿⢿⢿⣷⡀⠀⠀⠀⠸⣿⡃⢀⣹⣿',
  '⠀⠀⠀⠀⠙⢿⣧⣄⠀⠀⣠⣄⡀⠀⠀⠀⠀⠀⠀⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⢻⣷⡄⠀⠀⠀⠛⠿⠿⠟⠃',
  '⠀⠀⠀⠀⠀⠀⠙⢿⣶⣾⡿⠻⢿⣷⣦⣤⣄⠀⠀⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣶⣶⣤⡀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠙⠁⠀⠀⠀⠈⠈⢻⣿⠅⠀⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠁⠁⣿⣗⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣷⣶⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⣿⣾⠿⠃⠀⠀⠀⠀',
  '',
  '⣲⣶⠀⠀⠀⣴⣶⠂⠀⠀⠀⠀⠀⠀⢶⣦⠀⠀⠀⠀⠀⠀⢀⣴⣾⡿⣷⣶⣤⠀⠀⢀⣶⣶⣶⣶⣶⣄⠀⠀⠀⠀⠀⠀⢶⣦⠀⠀⠀⠀⠀⠀⣶⣶⣶⣶⣶⣤⡀⠀',
  '⣺⣿⠀⣠⣾⡟⠁⠀⠀⠀⠀⠀⠀⢀⣘⣿⣇⠀⠀⠀⠀⠀⢈⡛⠀⠀⠀⠉⠃⠀⠀⠀⣤⡇⠀⠀⠙⣿⣇⠀⠀⠀⠀⢀⣘⣿⣇⠀⠀⠀⠀⠀⣠⣮⠀⠀⠉⣿⣗⠀',
  '⣺⣿⣴⣿⣏⠀⠀⠀⠀⠀⠀⠀⢀⣾⡟⠙⣿⣆⠀⠀⠀⠀⠙⠿⣷⣦⣄⡀⠀⠀⠀⠨⣿⣇⡀⣀⣰⣿⡇⠀⠀⠀⢀⣾⡟⠙⣿⣆⠀⠀⠀⠀⣿⣷⣄⣤⣴⣿⠏⠀',
  '⣺⣿⠟⠉⢿⣷⡀⠀⠀⠀⠀⠀⣾⡿⠁⠀⠹⣿⡄⠀⠀⠀⠀⠀⠈⠙⠻⢿⣷⡄⠀⠐⣿⡿⠿⠿⠛⠋⠀⠀⠀⠀⣾⡿⠁⠀⠹⣿⡄⠀⠀⠀⣿⣟⠙⢻⣿⡅⠀⠀',
  '⣺⣿⠀⠀⠀⠹⣿⣆⠀⠀⠀⣼⣿⢿⢿⢿⢿⢿⣿⡄⠀⠀⣠⣄⡀⠀⠀⣠⣿⡇⠀⢈⣿⡇⠀⠀⠀⠀⠀⠀⠀⣼⣿⢿⢿⢿⢿⢿⣿⡄⠀⠀⣿⣗⠀⠀⠻⣿⣆⠀',
  '⠺⠿⠀⠀⠀⠀⠘⠟⠷⠀⠸⠟⠃⠀⠀⠀⠀⠀⠻⠟⠄⠀⠙⠻⠿⡿⡿⠿⠋⠀⠀⠐⠿⠇⠀⠀⠀⠀⠀⠀⠸⠟⠃⠀⠀⠀⠀⠀⠻⠟⠄⠀⠻⠗⠀⠀⠀⠙⠿⠦',
  '',
  '',
}

Kaspar.center = {
  {
    icon = '#  ',
    desc = 'Recently opened files                   ',
    action =  'Telescope oldfiles',
    shortcut = 'SPACE F O',
  },

  {
    icon = '#  ',
    desc = 'Browse files                            ',
    action = 'Telescope find_files',
    shortcut = 'SPACE F F'
  },

  {
    icon = '#  ',
    desc = 'New file                                ',
    shortcut = 'SPACE F N',
    action = 'DashboardNewFile',
  },

  {
    icon = '#  ',
    desc = 'Change terminal color                   ',
    shortcut = 'SPACE T C',
    action = 'Telescope colorscheme',
  },

  {
    icon = '#  ',
    desc = 'Manage protocols                        ',
    shortcut = 'SPACE M P',
    action = 'Mason',
  },

  {
    icon = '#  ',
    desc = 'Terminate current session               ',
    action = 'qa!',
    shortcut = 'SPACE Q A',
  },
}

Kaspar.footer = {
  '',
  'Detected ' .. #vim.tbl_keys(packer_plugins) .. ' plugins',
  'Neovim 0.8.1 | ' .. require("verse.git").get_verse_full_release_name()
}

function Kaspar.opts()
  vim.cmd([[colorscheme carbonfox]])
  vim.cmd([[hi DashboardHeader guifg=#e0474c]])
  vim.cmd([[hi DashboardCenter guifg=#e79556]])
  vim.cmd([[hi DashboardShortCut guifg=#efeb68]])
  vim.cmd([[hi DashboardFooter guifg=#f77479]])
end

return Kaspar
