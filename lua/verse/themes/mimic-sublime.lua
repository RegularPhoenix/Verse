﻿Sublime = {}

Sublime.header = {
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡠⡠⡢⡪⡪⡪',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⢠⢠⢢⢱⠱⡱⡱⡱⡱⡱⡱⡱',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⢄⢄⢆⢣⢣⢣⢣⢣⢣⢣⢣⢣⢱⠱⡱⡱⡱⡱',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⡠⡢⡢⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡱⡱⡱',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡠⡠⡢⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⢠⢠⢢⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪⢪',
  '⠀⠀⠀⠀⠀⢀⢀⢄⢔⢔⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
  '⢀⢄⢔⢔⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
  '⡌⡎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⠎',
  '⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⠊⠊⠈⠀⠁',
  '⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⠣⠃⠃⠁⠁⠀⠀⠀⠀⠀⠀⠀',
  '⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⢕⠕⠑⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢌⢈⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡢⡠⡠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡔⡄⡄⡀⠀⠀⠀⠀⠀⠀',
  '⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢆⢆⢄⠀',
  '⠣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣',
  '⠀⠈⠈⠊⠪⠪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪',
  '⠀⠀⠀⠀⠀⠀⠀⠈⠈⠊⠪⠪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠑⠑⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠑⠑⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢄⡐⡔⡔⡄⡄⢄⠀⠀⠀⠀⠀⠁⠑⠑⠱⠱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱⡱',
  '⠀⠀⠀⠀⠀⠀⢀⢀⢄⢔⢔⢕⢕⢕⢕⢜⢜⢜⢜⢜⢜⢜⢜⢔⢔⢄⢄⢀⠀⠀⠀⠀⠈⠈⠊⠪⠪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡪',
  '⢀⢀⢄⢔⢌⢎⢆⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢇⢣⢢⢠⢀⢀⠀⠀⠀⠀⠀⠁⠑⠑⠕⢕⢕⢕⢕⢕⢕⢕',
  '⡢⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡢⡠⡠⡀⡀⠀⠀⠀⠀⠁⠑⠑⠕⠕',
  '⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢆⢢⢠⠀⠀⠀⠀⠀',
  '⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⠣⠃⠃⠁⠁⠀⠀⠀⠀⠀⠀',
  '⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⠕⠕⠑⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⢎⠪⠊⠊⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ',
  '⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⡣⠣⠃⠃⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⡕⢕⠕⠕⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀',
  '⢎⢎⢎⢎⢎⢎⢎⠎⠎⠊⠊⠈⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⢣⠣⢃⠣⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '',
}

Sublime.center = {
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

Sublime.footer = {
  '',
  '-- MIMIC --',
  '(Sublime Text 4 BUILD 4143)'
}

function Sublime.opts()
  vim.cmd([[colorscheme ofirkai]])
  vim.cmd([[hi DashboardHeader guifg=#ff9800]])
  vim.cmd([[hi DashboardCenter guifg=#5b7c99]])
  vim.cmd([[hi DashboardFooter guifg=#5759c8]])
end

return Sublime
