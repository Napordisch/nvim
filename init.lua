vim.keymap.set("n", "<space>x", ":.lua<CR>") -- execute one line
vim.keymap.set("v", "<space>x", ":lua<CR>") -- execute selection

vim.keymap.set('n', 'grn', vim.lsp.buf.rename) -- rename variable
vim.keymap.set('n', 'grr', vim.lsp.buf.references) -- find references
vim.g.mapleader = "<Space>"

vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.wrap = true
vim.opt.shiftwidth = 4


require('config.highlight_on_yank')
require('config.lazy')
