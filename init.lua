vim.keymap.set("n", "<space>x", ":.lua<CR>") -- execute one line
vim.keymap.set("v", "<space>x", ":lua<CR>") -- execute selection

vim.g.mapleader = " "

-- wrap
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.wrap = true

vim.opt.sidescrolloff = 16
vim.opt.scrolloff=8

-- indents
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- line numbers
vim.opt.relativenumber = false
vim.opt.number = false

-- less disorienting ctrl-d and ctrl-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

require('config.highlight_on_yank')
require('config.lazy')
require('config.harpoon')
