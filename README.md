![Static Badge](https://img.shields.io/github/last-commit/RegularPhoenix/Verse?style=for-the-badge&logo=github&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41)
![Static Badge](https://img.shields.io/github/v/release/RegularPhoenix/Verse?style=for-the-badge&logo=gitbook&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41)

Verse is an extensible Neovim config that is made on top of [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager. It is greatly inspired by [LazyVim](https://github.com/LazyVim/LazyVim) and [AstroNvim](https://github.com/AstroNvim/AstroNvim).
## Preview
![image](https://github.com/RegularPhoenix/Verse/assets/90686797/13818a66-6a5f-42a8-b2e1-866e06a4c3b1)

## Requirements
* Git >= 2.25.1
* Neovim >= 0.9
* Any [NerdFont](https://www.nerdfonts.com/font-downloads)
* Plugin requirements:
  - Any C compiler (cc, gcc, clang, zig) for [treesitter] (https://github.com/nvim-treesitter/nvim-treesitter)
  - [ripgrep](https://github.com/BurntSushi/ripgrep) for [telescope](https://github.com/nvim-telescope/telescope.nvim)
  - make for LuaSnip

## Installation
You can install verse manually or download a script from releases, it will run the same commands for you.

If you had Neovim before, move your old config and data to different directory:

**Unix**:

```bash
mv ~/.config/nvim ~/.config/nvim-old
mv ~/.local/share/nvim ~/.local/share/nvim-old
```

Then clone this repository and ignore userconfig:

```bash
git clone https://github.com/RegularPhoenix/Verse ~/.config/nvim
git -C ~/.config/nvim update-index --assume-unchanged lua\userconfig\
```

**Windows**:

```powershell
Rename-Item -Path "$env:LOCALAPPDATA\nvim" -NewName "nvim-old"
Rename-Item -Path "$env:LOCALAPPDATA\nvim-data" -NewName "nvim-data-old"
```

Then clone this repository and ignore userconfig:

```powershell
git clone https://github.com/RegularPhoenix/Verse "$env:LOCALAPPDATA\nvim"
git -C "$env:LOCALAPPDATA\nvim" update-index --assume-unchanged lua\userconfig\
```

## Configuration
**Updating Verse**

Verse can be updated using the `:VerseUpdate` command. It is updated using git, so if you have not ignored /lua/userconfig directory during installation, you will have to pull the changes manually.

**Autocmds, keybinds, options**

All autocmds, keybinds and options should be set in `autocmds.lua`, `keybinds.lua` and `opts.lua` in the `lua/userconfig` directory.
Options are loaded before plugins, autocmd and keybinds are loaded when needed (VeryLazy event in lazy.nvim).
Additionaly, keybinds can be set using [which-key](https://github.com/folke/which-key.nvim) `local wk = require("which-key")`.
See additional info about plugin in its docs `:h which-key` or on [github](https://github.com/folke/which-key.nvim#%EF%B8%8F-mappings).

**Lazy.nvim**

Verse uses [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager to manage all plugins.

Most basic usage:
* `:Lazy check` - check for plugin updates
* `:Lazy update` - update all plugins
* `:Lazy clean` - remove all unused plugins

Also, interactive window can be called using `:Lazy` or by selecting corresponding entry in default dashboard.

**Installing and configuring plugins**

To install any plugins, create a luafile with any name under `lua/userconfig/plugins` and return a table with all required options
(see `lua/verse/plugins/example.lua` or [lazy.nvim examples page](https://github.com/folke/lazy.nvim#examples)).

You can also override config of any preconfigured plugins by adding it to the table as any other plugin.

**Verse Settings**

In addition to preconfiguring some plugins, Verse also provides a simpler way to change plugins configuration in `lua/userconfig/verse.lua`.
There are not many options yet, but I will try to add more in the future.
