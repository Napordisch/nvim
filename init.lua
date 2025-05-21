vim.keymap.set("n", "<space>x", ":.lua<CR>") -- execute one line
vim.keymap.set("v", "<space>x", ":lua<CR>") -- execute selection

vim.g.mapleader = " "

vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.wrap = true
vim.opt.sidescrolloff = 16
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

vim.opt.relativenumber = false
vim.opt.number = false

require('config.highlight_on_yank')
require('config.lazy')
require('config.harpoon')
