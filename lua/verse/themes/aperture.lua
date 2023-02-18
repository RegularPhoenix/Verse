Aperture = {}

Aperture.type = 'doom'

Aperture.header = {
    '',
    '',
    '',
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

Aperture.footer = {
  '',
  'Detected ' .. #vim.tbl_keys(packer_plugins) .. ' plugins',
  'Neovim 0.8.1 | ' .. require("verse.git").get_verse_full_release_name()
}

function Aperture.opts()
  vim.cmd([[colorscheme gruvbox-material]])
end

return Aperture
