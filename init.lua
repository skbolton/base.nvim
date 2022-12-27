--[[
┌───────────────────────────────────┐
│░█▀▄░█▀█░█▀▀░█▀▀░░░░█▀█░█░█░▀█▀░█▄█│
│░█▀▄░█▀█░▀▀█░█▀▀░░░░█░█░▀▄▀░░█░░█░█│
│░▀▀░░▀░▀░▀▀▀░▀▀▀░▀░░▀░▀░░▀░░▀▀▀░▀░▀│
└───────────────────────────────────┘

init.lua - the neovim configuration entrypoint

Don't let all the text in this file bog you down - you can always remove it,
but since this is the entrypoint of everything there is some context that is
helpful to explain here.

When Neovim starts up it loads files as defined in `:help initialization`.
The standard folder structure (with some example files) of a neovim
configuration is the following:

~/.config/nvim/
├── init.lua
├── after
│   ├── ftplugin
│   │   └── yaml.vim
│   └── syntax
│       └── markdown.vim
├── ftplugin
│   └── markdown.lua
├── lua
│   ├── options.lua
├── plugin
│   ├── my_plugin.lua

After this file (init.lua) is parsed neovim will recursively load all the
`.lua` and `.vim` files found in the `plugin` folder. The plugin folder is a
great place to put functions and code that you want loaded automatically and
that aren't dependent on anything else. See the plugin folder for when we take
advantage of this.

The `ftplugin` folder is short for "filetype plugins". These files are
automatically loaded when a file of that type is opened. This is helpful when
you want certain configuration to apply only in those filetypes.

The `after/ftplugin` folder contains code we want run after a ftplugin is ran.
The after folder gives us a spot to have a final say in configuration. Say a 
ftplugin from a plugin does some configuration you really don't like. The 
`after/ftplugin` folder give a spot to override any `ftplugin` operation.

The `lua` folder is where we can place any `lua` code that we write that we don't
want auto loaded for us. Examples of these files are ones where we need to control
the load order or we don't want to load the file until some condition is met.

Let's load the first module. We can pull in a module by `require`ing it. Lua
modules are named after the file they reside in and their path relative to the 
`lua` folder. If for example there was a module at
lua/folder1/folder2/my-file.lua` it could be required by calling:

local my_module = require('folder1/folder2/my-file')

The `.lua` extension is optional, also the folders can be represented with '/' or
with '.'.

local my_module = require('folder1.folder2.my-file')

Time to start loading some modules
--]]

require('options')
require('plugins')
