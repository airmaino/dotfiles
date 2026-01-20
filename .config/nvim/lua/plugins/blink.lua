require("blink.cmp").setup({
	keymap = {
		preset = "default"
	},

	appearance = {
		nerd_font_variant = "mono",
	},

	completion = {
		menu = {
			scrollbar = false,
			draw = {
				columns = {
					{ "kind_icon" },
					{ "label", "label_description", gap = 1 },
				},
			},
		},
		documentation = { auto_show = true },
	},

	sources = {
		default = { "lsp", "path" },
	},

	fuzzy = {
		implementation = "lua",
	}
})
