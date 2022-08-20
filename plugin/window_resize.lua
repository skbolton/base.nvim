--[[
When nvim is resized, automatically resize all open windows

This is a good example of code to put in the plugin folder
given there are no other dependencies or ordering constraints

`autocommands` specify commands to be executed when certain events happen
to see all the events that can happen see `:help events`

`autogroups` allow us to group 1 or more autocommands together
this is especially useful if we wanted to clear some autocommands
with a group we could just delete the group and they all would be gone
-- ]]
local window_group = vim.api.nvim_create_augroup("WindowGroup", { clear = true })

-- on resize even out all the splits no matter what files we have open
vim.api.nvim_create_autocmd("VimResized", { pattern = "*", group = window_group, command = [[exe "normal! \<c-w>=" ]]})

