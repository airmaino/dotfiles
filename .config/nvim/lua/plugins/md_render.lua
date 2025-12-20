return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown" },
		lazy = false,

		opts = {
			enabled = true,
			render_modes = { 'n', 'c', 't' },
			quote = {
				enabled = true,
				render_modes = { 'n', 'c', 't' },
				icon = '>',
				repeat_linebreak = false,
				highlight = {
					'RenderMarkdownQuote1',
					'RenderMarkdownQuote2',
					'RenderMarkdownQuote3',
					'RenderMarkdownQuote4',
					'RenderMarkdownQuote5',
					'RenderMarkdownQuote6',
				},
			},

			callout = {
				todo = { raw = '[!TODO]', rendered = '󰋽 TODO', highlight = 'RenderMarkdownInfo', category = 'obsidian' },
			},

			checkbox = {
				enabled = true,
				render_modes = false,
				bullet = false,
				left_pad = 0,
				right_pad = 1,
				unchecked = {
					icon = '[ ]',
					highlight = 'RenderMarkdownUnchecked',
				},
				checked = {
					icon = '[X]',
					highlight = 'RenderMarkdownChecked',
				},
				custom = {
					todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo' },
				},
			},

		},
	},
}
