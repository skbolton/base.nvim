local telescope = require('telescope')
local builtins = require('telescope.builtin')

telescope.setup()

-- Define some mappings
-- TODO: describe leader key
-- TODO: describe mappings
vim.keymap.set('n', '<leader><leader>', builtins.find_files)
