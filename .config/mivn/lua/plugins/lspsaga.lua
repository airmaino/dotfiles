require("lspsaga").setup({

	hover = {
		max_width = 0.6,
		open_link = "gx",
		open_browser = "!firefox",
	},

})

vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
