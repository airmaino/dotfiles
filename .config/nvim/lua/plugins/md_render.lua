require("render-markdown").setup({
	enabled = true,
	render_modes = true,

	anti_conceal = {
		enabled = true,
		above = 0,
		below = 0,
		-- Which elements to always show, ignoring anti_conceal behavior. Values can either be
		-- booleans to fix the behavior or string lists representing modes where anti conceal
		-- behavior will be ignored. Valid values are:
		--   bullet
		--   callout
		--   check_icon, check_scope
		--   code_background, code_border, code_language
		--   dash
		--   head_background, head_border, head_icon
		--   indent
		--   link
		--   quote
		--   sign
		--   table_border
		--   virtual_lines
		ignore = {
		},
	},

	quote = {
		enabled = true,
		render_modes = true,
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
		note      = { raw = '[!NOTE]',      rendered = 'Note',      highlight = 'RenderMarkdownInfo',    category = 'github'   },
		tip       = { raw = '[!TIP]',       rendered = 'Tip',       highlight = 'RenderMarkdownSuccess', category = 'github'   },
		important = { raw = '[!IMPORTANT]', rendered = 'Important', highlight = 'RenderMarkdownHint',    category = 'github'   },
		warning   = { raw = '[!WARNING]',   rendered = 'Warning',   highlight = 'RenderMarkdownWarn',    category = 'github'   },
		caution   = { raw = '[!CAUTION]',   rendered = 'Caution',   highlight = 'RenderMarkdownError',   category = 'github'   },
		abstract  = { raw = '[!ABSTRACT]',  rendered = 'Abstract',  highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
		summary   = { raw = '[!SUMMARY]',   rendered = 'Summary',   highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
		tldr      = { raw = '[!TLDR]',      rendered = 'Tldr',      highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
		info      = { raw = '[!INFO]',      rendered = 'Info',      highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
		todo      = { raw = '[!TODO]',      rendered = 'Todo',      highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
		hint      = { raw = '[!HINT]',      rendered = 'Hint',      highlight = 'RenderMarkdownSuccess', category = 'obsidian' },
		success   = { raw = '[!SUCCESS]',   rendered = 'Success',   highlight = 'RenderMarkdownSuccess', category = 'obsidian' },
		check     = { raw = '[!CHECK]',     rendered = 'Check',     highlight = 'RenderMarkdownSuccess', category = 'obsidian' },
		done      = { raw = '[!DONE]',      rendered = 'Done',      highlight = 'RenderMarkdownSuccess', category = 'obsidian' },
		question  = { raw = '[!QUESTION]',  rendered = 'Question',  highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
		help      = { raw = '[!HELP]',      rendered = 'Help',      highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
		faq       = { raw = '[!FAQ]',       rendered = 'Faq',       highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
		attention = { raw = '[!ATTENTION]', rendered = 'Attention', highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
		failure   = { raw = '[!FAILURE]',   rendered = 'Failure',   highlight = 'RenderMarkdownError',   category = 'obsidian' },
		fail      = { raw = '[!FAIL]',      rendered = 'Fail',      highlight = 'RenderMarkdownError',   category = 'obsidian' },
		missing   = { raw = '[!MISSING]',   rendered = 'Missing',   highlight = 'RenderMarkdownError',   category = 'obsidian' },
		danger    = { raw = '[!DANGER]',    rendered = 'Danger',    highlight = 'RenderMarkdownError',   category = 'obsidian' },
		error     = { raw = '[!ERROR]',     rendered = 'Error',     highlight = 'RenderMarkdownError',   category = 'obsidian' },
		bug       = { raw = '[!BUG]',       rendered = 'Bug',       highlight = 'RenderMarkdownError',   category = 'obsidian' },
		example   = { raw = '[!EXAMPLE]',   rendered = 'Example',   highlight = 'RenderMarkdownHint' ,   category = 'obsidian' },
		quote     = { raw = '[!QUOTE]',     rendered = 'Quote',     highlight = 'RenderMarkdownQuote',   category = 'obsidian' },
		cite      = { raw = '[!CITE]',      rendered = 'Cite',      highlight = 'RenderMarkdownQuote',   category = 'obsidian' },
	},

	bullet = {
		enabled = true,
		render_modes = true,
		icons = { '-', '*', '-', '*' },
		ordered_icons = function(ctx)
			local value = vim.trim(ctx.value)
			local index = tonumber(value:sub(1, #value - 1))
			return ('%d.'):format(index > 1 and index or ctx.index)
		end,
		highlight = 'RenderMarkdownBullet',
		scope_highlight = {},
		scope_priority = nil,
	},

	checkbox = {
		enabled = true,
		render_modes = true,
		bullet = true,
		unchecked = {
			icon = '[ ]',
			highlight = 'RenderMarkdownUnchecked',
		},
		checked = {
			icon = '[X]',
			highlight = 'RenderMarkdownChecked',
		},
		custom = {
			todo = { raw = '[!]', rendered = '[!]', highlight = 'RenderMarkdownUrgent' },
		},
	},

	heading = {
		enabled = false,
		render_modes = true,
		atx = true,
		setext = true,
		sign = true,
		icons = { '#', '##', '###', '####', '#####', '######' },
		position = 'overlay',
		signs = { '' },
		above = '',
		below = '',
		backgrounds = {
			'RenderMarkdownH1Bg',
			'RenderMarkdownH2Bg',
			'RenderMarkdownH3Bg',
			'RenderMarkdownH4Bg',
			'RenderMarkdownH5Bg',
			'RenderMarkdownH6Bg',
		},
		foregrounds = {
			'RenderMarkdownH1',
			'RenderMarkdownH2',
			'RenderMarkdownH3',
			'RenderMarkdownH4',
			'RenderMarkdownH5',
			'RenderMarkdownH6',
		},
	},

	code = {
		enabled = true,
		render_modes = true,
		sign = false,
		conceal_delimiters = false,
		language = true,
		position = 'left',
		language_icon = false,
		language_name = true,
		language_info = true,
		language_pad = 2,
		disable_background = { 'diff' },
		width = 'block',
		min_width = 45,
		left_margin = 0,
		left_pad = 2,
		right_pad = 1,
		min_width = 0,
		language_border = ' ',
		language_left = '[',
		language_right = ']',
		above = '',
		below = '',
		inline = true,
		inline_left = '|',
		inline_right = '|',
		highlight = 'RenderMarkdownCode',
		highlight_info = 'RenderMarkdownCodeInfo',
		highlight_language = 'RenderMarkdownCodeLanguage',
		highlight_border = 'RenderMarkdownCodeBorder',
		highlight_fallback = 'RenderMarkdownCodeFallback',
		highlight_inline = 'RenderMarkdownCodeInline',
		style = 'full',
	},

	dash = {
		enabled = true,
		render_modes = true,
		icon = '-',
		width = 'full',
		left_margin = 0,
		highlight = 'RenderMarkdownDash',
	},


	pipe_table = {
		enabled = true,
		render_modes = true,
		preset = 'round',
		cell = 'padded',
		cell_offset = function()
			return 0
		end,
		padding = 1,
		min_width = 0,
		border_enabled = true,
		border_virtual = false,
		alignment_indicator = '─',
		head =   'RenderMarkdownTableHead',
		row =    'RenderMarkdownTableRow',
		filler = 'RenderMarkdownTableFill',
		style = 'full',
	},
})
