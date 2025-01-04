vim.keymap.set("n", "<space>x", ":.lua<CR>") -- execute one line
vim.keymap.set("v", "<space>x", ":lua<CR>") -- execute selection

vim.keymap.set('n', 'grn', vim.lsp.buf.rename) -- rename variable
vim.keymap.set('n', 'grr', vim.lsp.buf.references) -- find references
vim.g.mapleader = "<Space>"

vim.opt.linebreak = false
vim.opt.breakindent = false
vim.opt.wrap = false
vim.opt.sidescrolloff = 16

vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.relativenumber = true
vim.opt.number = true


require('config.highlight_on_yank')
require('config.lazy')
