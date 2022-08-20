--[[
┌────────────────────────────┐
│░█▀█░█▀█░▀█▀░▀█▀░█▀█░█▀█░█▀▀│
│░█░█░█▀▀░░█░░░█░░█░█░█░█░▀▀█│
│░▀▀▀░▀░░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀│
└────────────────────────────┘

A place to set Neovim options.

Neviom has a lot of options to affect editor behavior. Things like showing line
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
-- how many spaces should a tab char be
vim.opt.tabstop = 2

