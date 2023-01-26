local api = vim.api
local g = vim.g
local opt = vim.opt

api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = " "
g.maplocalleader = " "

opt.cursorline = true
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 5
opt.background = 'dark'

--opt.guicursor:append("a:block")
api.nvim_win_set_option(0, 'cursorline', false)
opt.so:append("99");
opt.guicursor:append("a:blinkon1")

-- Time in milliseconds to wait for a mapped sequence to complete.
opt.timeoutlen = 300


-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]
