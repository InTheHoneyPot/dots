require('bonsai.base')
require('bonsai.highlights')
require('bonsai.maps')
require('bonsai.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('bonsai.macos')
end
if is_win then
  require('bonsai.windows')
end

--vim.cmd [[colorscheme pywal]]
vim.cmd [[colorscheme gruvbox]]
vim.o.background = "dark"
--vim.cmd [[colorscheme NeoSolarized]]
--require('moonlight').set()
--require "user.material"

require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'pywal-nvim'
    -- ... your lualine config
  }
}
