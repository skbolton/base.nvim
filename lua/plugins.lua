-- TODO: Describe Packer
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'goolord/alpha-nvim',
    config = function ()
      local alpha = require('alpha')
			local dashboard = require('alpha.themes.dashboard')

			-- Set Header
			dashboard.section.header.val = {
        '██████╗  █████╗ ███████╗███████╗██╗     ██╗███╗   ██╗███████╗',
				'██╔══██╗██╔══██╗██╔════╝██╔════╝██║     ██║████╗  ██║██╔════╝',
				'██████╔╝███████║███████╗█████╗  ██║     ██║██╔██╗ ██║█████╗  ',
				'██╔══██╗██╔══██║╚════██║██╔══╝  ██║     ██║██║╚██╗██║██╔══╝  ',
				'██████╔╝██║  ██║███████║███████╗███████╗██║██║ ╚████║███████╗',
				'╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝'
			}

			-- Set menu
			dashboard.section.buttons.val = {
				dashboard.button('<space>', 'find files', ':Telescope find_files<CR>'),
        dashboard.button('?', 'Learn Base', ':e init.lua<CR>')
			}

			alpha.setup(dashboard.opts)
    end
  }

	use {
    'nvim-telescope/telescope.nvim',
		config = function()
      require('fuzzy')
		end
	}

	use {
    'sainnhe/everforest',
		config = function()
      vim.o.background = 'dark'
			vim.cmd('colorscheme everforest')
		end
	}
end)
