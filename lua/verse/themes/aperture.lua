Aperture = {}

Aperture.header = {
    '                                      .,-:;//;:=,                                        ',
    '                                  . :H@@@MM@M#H/.,+%;,                                   ',
    '                               ,/X+ +M@@M@MM%=,-%HMMM@X/,                                ',
    '                             -+@MM; $M@@MH+-,;XMMMM@MMMM@+-                              ',
    '                            ;@M@@M- XM@X;.  -+XXXXXHHH@M@M#@/.                           ',
    '                          ,%MM@@MH ,@%=             .---=-=:=,.                          ',
    '                          =@#@@@MX.,                -%HX$$%%%+;                          ',
    '                         =-./@M@M$                   .;@MMMM@MM:                         ',
    '                         X@/ -$MM/                     . +MM@@@M$                        ',
    '                        ,@M@H: :@:                     . =X#@@@@-                        ',
    '                        ,@@@MMX, .                     /H- ;@M@M=                        ',
    '                        .H@@@@M@+,                     %MM+..%#$.                        ',
    '                         /MMMM@MMH/.                   XM@MH; =;                         ',
    '                          /%+%$XHH@$=              ,  .H@@@@MX,                          ',
    '                           .=--------.           -%H. ,@@@@@MX,                          ',
    '                            .%MM@@@HHHXX$$$%+- .:$MMX =M@@MM%.                           ',
    '                              =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=                             ',
    '                                =%@M@M#@$-.=$@MM@@@M; %M%=                               ',
    '                                  ,:+$+-,/H#MMMMMMM@= =,                                 ',
    '                                        =++%%%%+/:-.                                     ',
    '',
    '',
    ' █████╗ ██████╗ ███████╗██████╗ ████████╗██╗   ██╗██████╗ ███████╗    ██╗██████╗ ███████╗',
    '██╔══██╗██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██╔════╝    ██║██╔══██╗██╔════╝',
    '███████║██████╔╝█████╗  ██████╔╝   ██║   ██║   ██║██████╔╝█████╗      ██║██║  ██║█████╗  ',
    '██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗   ██║   ██║   ██║██╔══██╗██╔══╝      ██║██║  ██║██╔══╝  ',
    '██║  ██║██║     ███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║███████╗    ██║██████╔╝███████╗',
    '╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚═╝╚═════╝ ╚══════╝',
    '',
}

Aperture.center = {
  {
    icon = '>  ',
    desc = 'Recently opened files                   ',
    action =  'Telescope oldfiles',
    shortcut = 'SPC f n',
  },

  {
    icon = '>  ',
    desc = 'Browse files                            ',
    action = 'Telescope find_files',
    shortcut = 'SPC f f'
  },

  {
    icon = '>  ',
    desc = 'New file                                ',
    shortcut = 'SPC c n',
    action = 'DashboardNewFile',
  },

  {
    icon = '>  ',
    desc = 'Change terminal color                   ',
    shortcut = 'SPC t c',
    action = 'Telescope colorscheme',
  },

  {
    icon = '>  ',
    desc = 'Terminate current session               ',
    action = 'q',
    shortcut = 'SPC f w',
  },
}

Aperture.footer = {
  '',
  'Detected ' .. #vim.tbl_keys(packer_plugins) .. ' plugins',
  'Neovim 0.8.1 | Verse 0.2.3.0 -- Mimic'
}

function Aperture.opts()
  vim.cmd([[colorscheme gruvbox-material]])
end

return Aperture
