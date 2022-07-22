require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"
require "user.cmp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
require "user.dap"


vim.g.material_style = 'deep ocean'

require('material').setup({
		contrast = {
			sidebars = true,
			floating_windows = false,
			line_numbers = false,
			sign_column = false,
			cursor_line = true,
			popup_menu = false
		},
		italics = {
			comments = true,
			strings = false,
			keywords = false,
			functions = true,
			variables = false
		},
		contrast_filetypes = {
			"terminal",
			"packer",
			"qf",
		},
		disable = {
			borders = true,
			background = false,
			term_colors = false,
			eob_lines = false
		},
		lualine_style = 'stealth'
	})

vim.cmd 'colorscheme material'
