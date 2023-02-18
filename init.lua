require('base')
require('highlights')
require('maps')
require('plugins')

-- LSP
require('lang')

local has = vim.fn.has
local is_mac = has "macunix"

if is_mac then
  require('macos')
end
