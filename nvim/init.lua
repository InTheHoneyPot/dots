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
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
require "user.dap"
require ('moonlight').set()

require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'moonlight'
    -- ... your lualine config
  }
}

require('orgmode').setup_ts_grammar()

require('orgmode').setup({
  org_agenda_files = {'~/Notes/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Notes/org/refile.org',
  mappings = {
    global = {}
  }
})
