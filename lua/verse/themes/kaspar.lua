Kaspar = {}

Kaspar.type = 'doom'

Kaspar.header = {
  '',
  '',
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
    desc = 'Recently opened files                     ',
    action =  'Telescope oldfiles',
    key = 'SPACE F O',
  },

  {
    icon = '#  ',
    desc = 'Browse files',
    action = 'Telescope find_files',
    key = 'SPACE F F',
  },

  {
    icon = '#  ',
    desc = 'New file',
    key = 'SPACE F N',
    action = 'enew',
  },

  {
    icon = '#  ',
    desc = 'Change terminal color',
    key = 'SPACE T C',
    action = 'Telescope colorscheme',
  },

  {
    icon = '#  ',
    desc = 'Manage protocols',
    key = 'SPACE M P',
    action = 'Mason',
  },

  {
    icon = '#  ',
    desc = 'Terminate current session',
    action = 'qa!',
    key = 'SPACE Q A',
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
  vim.cmd([[hi DashboardIcon guifg=#efeb68]])
  vim.cmd([[hi DashboardShortCut guifg=#efeb68]])
  vim.cmd([[hi DashboardDesc guifg=#efeb68]])
  vim.cmd([[hi DashboardKey guifg=#efeb68]])
  vim.cmd([[hi DashboardFooter guifg=#f77479]])
end

return Kaspar
