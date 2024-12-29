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

vim.cmd("colorscheme gruvbox")
vim.opt.termguicolors = true
vim.opt.background = 'dark'

require('lualine').setup {
  options = {
    theme = 'gruvbox'
  }
}

vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
]])


vim.cmd([[
  highlight SignColumn guibg=NONE ctermbg=NONE
]])
