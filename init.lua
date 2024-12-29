vim.keymap.set("n", "<space>x", ":.lua<CR>") -- execute one line
vim.keymap.set("v", "<space>x", ":lua<CR>") -- execute selection
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.wrap = true

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking text',
	group = vim.api.nvim_create_augroup('highlight-yank', {clear = true}),
	callback = function()
		vim.highlight.on_yank()
	end,
})

require('config.lazy')
