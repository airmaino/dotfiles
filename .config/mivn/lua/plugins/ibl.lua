require("nvim.lua.plugins.ibl").setup {

	indent = {
		char = "▏",
		tab_char = "▏",
		highlight = { "IblIndent" },
	},

	scope = {
		enabled = true,
		char = "▏",
		show_start = false,
		show_end = false,
		highlight = { "IblScope" },
	},

	exclude = {
		filetypes = { "help", "NvimTree", "neo-tree" },
		buftypes = { "terminal", "nofile" },
	},
}
