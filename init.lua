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

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('highlight-yank', {clear = true}),
    callback = function()
	vim.highlight.on_yank()
    end,
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
	vim.api.nvim_echo({
	    { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
	    { out, "WarningMsg" },
	    { "\nPress any key to exit..." },
	}, true, {})
	vim.fn.getchar()
	os.exit(1)
    end
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
    spec = {
        {
            "ThePrimeagen/harpoon",
            branch = "harpoon2",
            dependencies = { "nvim-lua/plenary.nvim" }
        },
        {
            'nvim-telescope/telescope.nvim', tag = '0.1.8',
            dependencies = { 'nvim-lua/plenary.nvim' },
            config = function()
                local builtin = require('telescope.builtin')

                vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' }) -- Find Files

                vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' }) -- Find with Grep

                vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' }) -- Find Buffers

                vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' }) -- Find Help

            end
        }

    },
})

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-h>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
