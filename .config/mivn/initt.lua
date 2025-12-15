vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
})

require "plugins.oil"

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>n', ':silent write<CR>')
vim.keymap.set('n', '<leader>q', ':silent quit<CR>')
vim.keymap.set('n', '<leader>e', ':silent Oil --float<CR>')
