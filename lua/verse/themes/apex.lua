Apex = {}

Apex.type = 'doom'

Apex.header = {
  "",
  "",
  "",
  "                         ....                         ",
  "                        .oKKo.                        ",
  "                       'kNWWNk'                       ",
  "                      :0WWWWWW0;                      ",
  "                    .oXWWWWWWWWXl.                    ",
  "                   'xNWWWWWWWWWWNx'                   ",
  "                  ;0WWWWWWWWWWWWWW0;                  ",
  "                .lXWWWWWWWWWWWWWWNNXl.                ",
  "               .xNWWWWWWWWWWWWWKoxXWNx.               ",
  "              ,OWWWWWWWWWWWWXk:.'OWWWWO,              ",
  "            .cKWWWWWWWWWW0oc,. .xWWWWWWKc.            ",
  "           .dNWWWWWWWWXkc.     lNWWWWWWWNd.           ",
  "          ,OWWWWWWWNKo,        ,dKWWWWWWWWO,          ",
  "        .cKWWWWWWXk:.            .ckXWWWWWWK:         ",
  "       .oXWWWWN0o'.                 'o0NWWWWXo.       ",
  "      'kNWWWKx;.                      .;xKWWWNk'      ",
  "     :0WWNkc.                            .cONWW0;     ",
  "   .oXN0o,.                                .,dKWXo.   ",
  "  'xKx:.      d8888                           .:xKx'  ",
  " ,ol'        d88888                              'lo, ",
  ".'.         d88P888                                .'.",
  "           d88P 888 88888b.   .d88b.  888  888        ",
  "          d88P  888 888 '88b d8P  Y8b `Y8bd8P'        ",
  "         d88P   888 888  888 88888888   X88K          ",
  "        d8888888888 888 d88P Y8b.     .d8''8b.        ",
  "       d88P     888 88888P'   'Y8888  888  888        ",
  "                    888                               ",
  "                    888                               ",
  "                    888                               ",
  "",
}

Apex.center = {
  {
    icon = '>  ',
    desc = 'Recently opened files                   ',
    action =  'Telescope oldfiles',
    key = 'SPC f n',
  },

  {
    icon = '>  ',
    desc = 'Browse files                            ',
    action = 'Telescope find_files',
    key = 'SPC f f',
  },

  {
    icon = '>  ',
    desc = 'New file                                ',
    key = 'SPC c n',
    action = 'enew',
  },

  {
    icon = '>  ',
    desc = 'Change terminal color                   ',
    key = 'SPC t c',
    action = 'Telescope colorscheme',
  },

  {
    icon = '>  ',
    desc = 'Terminate current session               ',
    action = 'q',
    key = 'SPC f w',
  },
}

Apex.footer = {
  '',
  'Detected ' .. #vim.tbl_keys(packer_plugins) .. ' plugins',
  'Neovim 0.8.1 | ' .. require("verse.git").get_verse_full_release_name()
}

function Apex.opts()
  vim.cmd([[colorscheme tokyonight-night]])
end

return Apex
