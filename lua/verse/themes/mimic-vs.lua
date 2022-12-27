﻿VS = {}

VS.header = {
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢦⡲⡤⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⡧⡳⣝⢮⡳⠨⡢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡰⣕⢝⢮⡫⡮⡳⡝⢌⢌⢊⠪⡢⡀⡀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣎⢞⣎⢯⡺⣜⢽⡹⣎⠢⡡⡑⢕⢌⠢⠪⡢⡀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢄⢆⢆⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡸⡪⡮⡳⣕⢗⣝⢮⡳⣝⡎⡪⡨⠪⡢⡑⡑⢕⢌⢊⠪⡢⡀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⢀⢠⢢⢣⢣⢣⢣⢣⢣⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢔⢧⡫⡮⡳⣝⢮⡳⣕⢗⣝⢮⢎⠢⡊⡪⡨⡊⡪⡢⡑⡑⢕⢌⠪⡨⡀',
  '⠀⠀⠀⠀⢠⢰⢸⢸⢸⢸⢸⢸⢸⢸⢸⢸⢸⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⣜⢕⡗⣝⢮⡫⡮⡳⣝⢮⡳⡵⣝⡕⢕⢌⠢⡪⡨⠢⡊⡪⠪⡢⡑⢕⢌⠂',
  '⠀⢀⣰⡸⡸⡸⡸⡸⡸⡸⡸⡸⡸⡸⡸⡸⡸⡸⡸⡠⡀⠀⠀⠀⠀⢠⡪⡳⣕⢗⣝⢮⡳⣝⢮⡫⡮⡳⣝⢞⡼⡪⡢⡑⢕⢌⢊⠪⡨⡊⡪⡨⠪⡢⡑⠅',
  '⢐⢽⣺⡪⡷⣕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢤⠀⢠⢸⢕⢽⡱⣣⡳⣕⢗⣝⢮⡳⣝⢮⡫⡮⡳⣝⢵⠨⡪⡢⡑⢕⢕⢌⠪⡢⠪⡊⡪⠪⡂',
  '⢨⡳⣳⢽⢝⡮⣗⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡝⡜⡵⣝⢵⢝⢮⡺⣜⢵⢕⢗⣝⢮⡳⣝⢮⡫⡮⡇⡣⡪⡨⡪⡢⡑⢕⢕⢌⠪⡊⡪⠪⡂',
  '⠰⣝⢮⣳⡫⣞⢵⣻⣪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡳⣝⢵⢝⢮⡳⣝⢵⢕⢗⣝⢮⡳⡝⠊⠐⡌⡪⡨⡪⠪⡪⡢⡑⢕⢕⢌⠪⡪⡂',
  '⢘⢮⣳⡳⣝⢮⣳⡳⣕⢯⠊⡎⡎⡎⡎⡎⡎⡎⡎⡎⡎⡎⡎⡎⡎⡎⡎⡎⡗⡽⡱⣝⢮⡳⣝⢵⢕⠗⠍⠀⠀⠐⡌⡪⡨⡪⡪⡊⡪⡪⡢⡑⢕⢕⢌⠂',
  '⢨⡳⣳⢝⡮⣳⡳⣝⢮⡳⠀⠈⠪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡫⡮⡳⣝⢮⠳⠉⠀⠀⠀⠀⠐⡌⡪⡪⡪⡪⡪⡪⡪⡪⡪⡢⡑⢕⠅',
  '⠰⣝⢮⡳⡽⣕⢯⡺⣕⢯⠀⠀⠀⠈⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢫⠎⠃⠀⠀⠀⠀⠀⠀⠐⡌⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡢⡁',
  '⢘⢮⡳⡽⣝⢮⡳⣝⡮⣳⠀⠀⠀⡠⡺⣜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢜⢔⢄⠀⠀⠀⠀⠀⠀⠐⡌⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡂',
  '⢨⡳⡽⣝⢮⡳⣝⣞⢮⡳⠀⢀⢖⡝⣞⢮⡳⣕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢄⠀⠀⠀⠀⠐⡌⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡂',
  '⠰⣝⢽⡪⣗⡽⣺⡪⣗⢽⡰⣝⢵⢝⢮⡳⣝⢮⡳⣕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢄⠀⠀⠐⡌⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡂',
  '⢘⢮⡳⣝⣞⢮⡳⣝⣞⢵⢝⢮⡳⣝⢵⢝⢮⡳⣝⢞⢮⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡣⡢⡐⡌⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡂',
  '⢨⡳⣝⣞⢮⡳⡽⣕⡕⣗⢝⡵⣝⢮⡳⣝⢵⢝⢮⢳⡳⣝⢮⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⠪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡂',
  '⠐⡽⣺⡪⣗⢯⡳⣕⢝⢮⡳⣝⢮⡳⣝⢮⡳⣝⢕⡗⡝⠎⠀⠈⠪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡣⡣⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡂',
  '⠀⠈⠘⢝⢮⡳⣝⢎⢯⡺⣜⢮⡳⣝⢮⡳⣝⢮⡳⠙⠀⠀⠀⠀⠀⠈⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡂',
  '⠀⠀⠀⠀⠁⠫⢎⡗⡧⡫⡮⡳⣝⢮⡳⣝⠮⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⡕⡌⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡂',
  '⠀⠀⠀⠀⠀⠀⠀⠑⠝⡵⡝⣞⢼⡱⡝⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡕⡌⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⠂',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠊⠎⠗⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⠊⠈⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢜⢜⢜⢜⢜⢜⢜⢜⢕⢌⠪⡪⡪⡪⡪⡪⠊⠈⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢕⢕⢕⢕⢕⢕⢇⠣⡣⡪⡪⠊⠈⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠪⡪⡪⡪⡪⡪⡪⠊⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠊⠎⠊⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '',
}

VS.center = {
  {
    icon = '•  ',
    desc = 'Recently opened files                   ',
    action =  'Telescope oldfiles',
    shortcut = 'SPACE F O',
  },

  {
    icon = '•  ',
    desc = 'Browse files                            ',
    action = 'Telescope find_files',
    shortcut = 'SPACE F F'
  },

  {
    icon = '•  ',
    desc = 'New file                                ',
    shortcut = 'SPACE F N',
    action = 'DashboardNewFile',
  },

  {
    icon = '•  ',
    desc = 'Change terminal color                   ',
    shortcut = 'SPACE T C',
    action = 'Telescope colorscheme',
  },

  {
    icon = '•  ',
    desc = 'Terminate current session               ',
    action = 'qa!',
    shortcut = 'SPACE Q A',
  },
}

VS.footer = {
  '',
  '-- MIMIC --',
  '(Visual Studio 2022 version 17.4)'
}

function VS.opts()
  vim.cmd([[colorscheme codedark]])
  vim.cmd([[hi DashboardHeader guifg=#7160e8]])
  vim.cmd([[hi DashboardCenter guifg=#33aeab]])
  vim.cmd([[hi DashboardFooter guifg=#5759c8]])
end

return VS
