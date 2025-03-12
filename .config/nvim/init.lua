require("bonsai.core")
require("bonsai.lazy")

local has = vim.fn.has
local is_mac = has "macunix"

if is_mac then
  require('bonsai.core.macos')
end


