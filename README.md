![Static Badge](https://img.shields.io/github/last-commit/RegularPhoenix/Verse?style=for-the-badge&logo=github&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41)
![Static Badge](https://img.shields.io/github/v/release/RegularPhoenix/Verse?style=for-the-badge&logo=gitbook&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41)

Verse is an extensible Neovim config that uses [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager. It is greatly inspired by [LazyVim](https://github.com/LazyVim/LazyVim) and [AstroNvim](https://github.com/AstroNvim/AstroNvim).
## Preview
![image](https://github.com/RegularPhoenix/Verse/assets/90686797/13818a66-6a5f-42a8-b2e1-866e06a4c3b1)

## Requirements
* Git >= 2.25.1
* Neovim >= 0.9
* Any [NerdFont](https://www.nerdfonts.com/font-downloads)
* Plugin requirements:
  - Any C compiler (cc, gcc, clang, zig) for [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [ripgrep](https://github.com/BurntSushi/ripgrep) for [telescope](https://github.com/nvim-telescope/telescope.nvim)
  - make for [LuaSnip](https://github.com/L3MON4D3/LuaSnip)

## Installation
You can install Verse manually or by downloading and executing a script from releases, it will run the same commands for you and also create a config example.

If you had Neovim before, move your old config and data to a different directory:

**Unix**:

```bash
mv ~/.config/nvim ~/.config/nvim-old
mv ~/.local/share/nvim ~/.local/share/nvim-old
```

Then clone this repository:

```bash
git clone https://github.com/RegularPhoenix/Verse ~/.config/nvim
```

**Windows**:

```powershell
Rename-Item -Path "$env:LOCALAPPDATA\nvim" -NewName "nvim-old"
Rename-Item -Path "$env:LOCALAPPDATA\nvim-data" -NewName "nvim-data-old"
```

Then clone this repository:

```powershell
git clone https://github.com/RegularPhoenix/Verse "$env:LOCALAPPDATA\nvim"
```

**Updating Verse**

Verse can be updated by using the `:VerseUpdate` command or manually, by pulling changes from git in your config directory.

## Configuration

All configuration files should be put into `lua/userconfig` directory. It is created automatically if you have installed Verse with script, otherwise you need to create it yourself:

```bash
mkdir ~/.config/nvim/lua/userconfig
```

or for Powershell:

```powershell
New-Item -Path "$env:LOCALAPPDATA\nvim\lua" -Name "userconfig" -ItemType "directory"
```

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
(see `lua/verse/plugins/example.lua` if installed by script or [lazy.nvim examples page](https://github.com/folke/lazy.nvim#examples)).

You can also override config of any preconfigured plugins by adding it to the table as any other plugin.

**Verse Settings**

In addition to preconfiguring some plugins, Verse also provides a simpler way to change plugins configuration. Return a table with desired options in `lua/userconfig/verse.lua`.
There are not many options yet, but I will try to add more in the future.

Possible options and their defaults:
* `colorscheme = "tokyonight"`, *type = string* -- Colorscheme to set on startup.
* `fortune = true`, *type = bool* -- Show fortune telling instead of version info in the
dashboard.
* `language_parsers = { "vimdoc", "gitcommit" }`, *type = table of strings* -- These language
parsers will be automatically installed by *nvim-treesitter*.
* `language_servers = {}`, *type = table of strings* -- These language servers will be automatically
installed by *Mason* and loaded by *lsp-config*.
* `test_runners = {}`, *type = table of strings* -- These test runners will be loaded by
neotest. They will **NOT** be installed automatically.

Some options will not work if you override config of plugin they interact with.
