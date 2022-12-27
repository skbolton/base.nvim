--[[
┌────────────────────────────┐
│░█▀█░█▀█░▀█▀░▀█▀░█▀█░█▀█░█▀▀│
│░█░█░█▀▀░░█░░░█░░█░█░█░█░▀▀█│
│░▀▀▀░▀░░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀│
└────────────────────────────┘

A place to set Neovim options.

Neovim has a lot of options to affect editor behavior. Things like showing line
numbers, converting tabs to spaces, etc. All of them can be seen at `:help
option-summary`.

For any option shown below you can get to its docs directly by typing its name
in quotes. For example:

vim.opt.number = true

`:help 'number'`
--]]

-- show line numbers
vim.opt.number = true
-- use 24-bit RGB colors (your terminal must support this to work - most modern ones do)
vim.opt.termguicolors = true
-- how many spaces should a tab be
vim.opt.tabstop = 2

-- The "Leader key" is a way of extending the power of VIM's shortcuts by using sequences of keys to perform a command. 
-- The default leader key is backslash. Therefore, if you have a map of <Leader>Q, you can perform that action by typing \Q.
vim.g.mapleader = " "

