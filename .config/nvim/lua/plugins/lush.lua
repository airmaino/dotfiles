local lush = require("lush")
local hsl = lush.hsl

local colors = {
	bg             = hsl("#15161E"),
	bg2            = hsl("#262838"),
	terminal_black = hsl("#24293B"),
	one_more       = hsl("#2A334A"),
	terminal_bl    = hsl("#38405C"),
	dark3          = hsl("#565F89"),
	dark5          = hsl("#737AA2"),
	fg             = hsl("#818AB3"),

	blue1   = hsl("#394B70"),
	blue2   = hsl("#356CE6"),
	blue    = hsl("#7AA2F7"),

	magenta = hsl("#FC0D65"),
	red     = hsl("#F7768E"),
	orange  = hsl("#FF9E64"),
	yellow  = hsl("#E0AF68"),
	purple  = hsl("#A27BE8"),
	cyan    = hsl("#44D3FC"),
	teal    = hsl("#1ABC9C"),
	green   = hsl("#9ECE6A"),
	-- fg - C0CAF5, cyan - 7DCFFF, magenta - FF007C, red - E04C67, orange - FF9152, magenta - F24499
}

local theme = lush(function()
	return {

		--- GENERAL ---
		Normal       { fg = colors.fg, bg = colors.bg },
		NormalNC     { fg = colors.fg, bg = colors.bg },
		Cursor       { fg = colors.bg, bg = colors.fg, gui = "bold" },
		CursorLine   { bg = colors.bg },
		CursorColumn { bg = colors.bg },
		ColorColumn  { bg = colors.bg },
		LineNr       { fg = colors.dark3 },
		CursorLineNr { fg = colors.cyan, gui = "italic" },
		Visual       { bg = colors.terminal_black },
		VisualNOS    { bg = colors.terminal_black },
		VertSplit    { fg = colors.bg },
		WinSeparator { fg = colors.terminal_black },
		Folded       { fg = colors.dark3, bg = colors.bg },
		SignColumn   { bg = colors.bg },
		Directory    { fg = colors.cyan, gui = "bold,italic" },
		EndOfBuffer  { fg = colors.bg },
		Whitespace   { fg = colors.terminal_black },
		NonText      { fg = colors.dark3 },
		MatchParen   { fg = colors.magenta, bg = colors.terminal_black, gui = "bold" },
		Search       { bg = colors.magenta, fg = colors.bg },
		IncSearch    { bg = colors.yellow, fg = colors.bg },
		Delimiter    { bg = colors.bg, fg = colors.fg },

		MsgArea      { bg = colors.bg, fg = colors.terminal_bl },
		ModeMsg      { bg = colors.bg, fg = colors.terminal_bl },

		-- Messages
		ErrorMsg     { fg = colors.red },
		WarningMsg   { fg = colors.yellow },
		Question     { fg = colors.green },
		MoreMsg      { fg = colors.green },

		-- Syntax
		Character    { fg = colors.magenta },
		Comment      { fg = colors.dark3, gui = "italic" },
		Constant     { fg = colors.magenta },
		Number       { fg = colors.magenta },
		String       { fg = colors.magenta },
		Todo         { fg = colors.bg, bg = colors.cyan, gui = "bold" },
		Function     { fg = colors.cyan, gui = "bold" },
		Type         { fg = colors.cyan },
		Identifier   { fg = colors.fg },
		Statement    { fg = colors.fg },
		Operator     { fg = colors.fg },
		Keyword      { fg = colors.fg },
		PreProc      { fg = colors.cyan },
		Special      { fg = colors.fg },

		-- Statusline & Tabs
		StatusLine   { fg = colors.fg, bg = colors.bg },
		StatusLineNC { fg = colors.fg, bg = colors.bg },
		TabLine      { fg = colors.fg, bg = colors.bg },
		TabLineSel   { fg = colors.fg, bg = colors.cyan },
		TabLineFill  { bg = colors.bg },

		-- Popup Menu
		Pmenu      { fg = colors.fg, bg = colors.bg },
		PmenuSel   { fg = colors.bg, bg = colors.fg, gui = "bold" },
		PmenuSbar  { bg = colors.terminal_black },

		-- LSP
		DiagnosticError  { fg = colors.red },
		DiagnosticWarn   { fg = colors.yellow },
		DiagnosticInfo   { fg = colors.fg },
		DiagnosticHint   { fg = colors.fg },

		DiagnosticVirtualTextError { fg = colors.dark5 },
		DiagnosticVirtualTextWarn  { fg = colors.dark5 },
		DiagnosticVirtualTextInfo  { fg = colors.dark5 },
		DiagnosticVirtualTextHint  { fg = colors.dark5 },

		DiagnosticUnderlineError { sp = colors.red, gui = "underline" },
		DiagnosticUnderlineWarn  { sp = colors.dark5, gui = "underline" },
		DiagnosticUnderlineInfo  { gui = "none" },
		DiagnosticUnderlineHint  { gui = "none" },


		-- TREESITTER --
		["@variable"]           = { fg = colors.fg },
		["@variable.member"]    = { fg = colors.fg },
		["@variable.builtin"]   = { fg = colors.fg },
		["@parameter"]          = { fg = colors.fg },
		["@property"]           = { fg = colors.fg },
		["@field"]              = { fg = colors.fg },
		["@string"]             = { fg = colors.magenta },
		["@character"]          = { fg = colors.magenta },
		["@boolean"]            = { fg = colors.magenta },
		["@number"]             = { fg = colors.magenta },
		["@constant"]           = { fg = colors.magenta },

		["@function"]           = { fg = colors.cyan },
		["@function.builtin"]   = { fg = colors.cyan },
		["@method"]             = { fg = colors.cyan },
		["@constructor"]        = { fg = colors.cyan },

		["@type"]               = { fg = colors.fg },
		["@type.builtin"]       = { fg = colors.fg },

		["@lsp.type.variable"]  = { fg = colors.fg },
		["@lsp.type.property"]  = { fg = colors.fg },
		["@lsp.type.parameter"] = { fg = colors.fg },
		["@lsp.type.field"]     = { fg = colors.fg },
		["@lsp.type.type"]      = { fg = colors.fg },
		["@lsp.type.function"]  = { fg = colors.cyan },
		["@lsp.type.method"]    = { fg = colors.cyan },


		--- OIL ---
		OilNormal     { fg = colors.fg,    bg = colors.bg },
		OilFileHidden { fg = colors.dark5, bg = colors.bg },
		OilDir        { fg = colors.cyan,  bg = colors.bg },
		OilDirHidden  { fg = colors.dark5, bg = colors.bg },
		OilDirIcon    { fg = colors.cyan,  bg = colors.bg },
		OilFile       { fg = colors.fg,    bg = colors.bg },

		FloatBorder   { fg = colors.one_more, bg = colors.bg },
		NormalFloat   { bg = colors.bg },

		Title         { fg = colors.terminal_bl, gui = "bold" }, -- NEED FIX --

		-- DEV ICO
		DevIconDefault { fg = colors.cyan },
		DevIcon        { fg = colors.cyan },
		

		-- PICKER
		MiniPickNormal        { fg = colors.fg, bg = colors.bg },
		MiniPickMatchCurrent  { fg = colors.cyan, bg = colors.terminal_black },
		MiniPickBorder        { fg = colors.one_more, bg = colors.bg },
		MiniPickBorderText    { fg = colors.dark3, bg = colors.bg },
		MiniPickHeader        { fg = colors.dark3, bg = colors.bg },
		MiniPickMatchMarked   { fg = colors.fg, bg = colors.terminal_black },
		MiniPickPrompt        { fg = colors.dark3, bg = colors.bg },

		--- BLINK ---
		BlinkCmpMenu              { fg = colors.fg, bg = colors.bg },
		BlinkCmpMenuBorder        { fg = colors.one_more, bg = colors.bg },
		BlinkCmpMenuSelection     { fg = colors.bg, bg = colors.fg, gui = "bold" },

		-- ICO
		BlinkCmpKind { fg = colors.cyan, bg = colors.bg },

		BlinkCmpDoc  { fg = colors.cyan, bg = colors.bg },
		BlinkCmpDocBorder { fg = colors.one_more, bg = colors.bg },
		blinkcmpdocseparator { fg = colors.one_more, bg = colors.bg },
		BlinkCmpSignatureHelp { fg = colors.fg, bg = colors.terminal_black },
		BlinkCmpSignatureHelpBorder { fg = colors.one_more, bg = colors.bg },


		-- C --
		cType     { fg = colors.cyan, bg = colors.bg, gui = "bold" },
		cInclude  { fg = colors.fg, bg = colors.bg },
		cIncluded { fg = colors.magenta, bg = colors.bg },
		cNumber   { fg = colors.magenta, bg = colors.bg },
		cSpecial  { fg = colors.cyan },

		-- MARKDOWN
		-- QUOTES
		RenderMarkdownQuote1 { fg = colors.magenta },
		RenderMarkdownQuote2 { fg = colors.orange },
		RenderMarkdownQuote3 { fg = colors.green },
		RenderMarkdownQuote4 { fg = colors.cyan },
		RenderMarkdownQuote5 { fg = colors.blue2 },
		RenderMarkdownQuote6 { fg = colors.purple },

		-- CALLOUTS
		RenderMarkdownInfo               { fg = colors.cyan, bg = colors.bg },

		-- CHECKBOXES
		RenderMarkdownUnchecked          { fg = colors.dark3 },
		RenderMarkdownChecked            { fg = colors.green },
		RenderMarkdownRenderMarkdownTodo { fg = colors.red },
		RenderMarkdownInprocess          { fg = colors.magenta },

		-- LISTS
		RenderMarkdownBullet             { fg = colors.dark3 },

		-- CODE
		RenderMarkdownCode               { fg = colors.fg, bg = colors.bg2 },
		RenderMarkdownCodeIndo           { fg = colors.green, bg = colors.bg2 },
		RenderMarkdownCodeLanguage       { fg = colors.green, bg = colors.bg2 },

		-- DASH
		RenderMarkdownDash        { fg = colors.bg2, bg = colors.bg },

		-- TABLE
		RenderMarkdownTableHead   { fg = colors.one_more, bg = colors.bg },
		RenderMarkdownTableRow    { fg = colors.one_more, bg = colors.bg },
		RenderMarkdownTableFill   { fg = colors.one_more, bg = colors.bg },


		-- HEADINGS
		markdownH1          { fg = colors.magenta },
		markdownH2          { fg = colors.orange },
		markdownH3          { fg = colors.green },
		markdownH4          { fg = colors.cyan },
		markdownH5          { fg = colors.blue2 },
		markdownH6          { fg = colors.purple },

		markdownH1Delimiter { fg = colors.magenta },
		markdownH2Delimiter { fg = colors.orange },
		markdownH3Delimiter { fg = colors.green },
		markdownH4Delimiter { fg = colors.cyan },
		markdownH5Delimiter { fg = colors.blue2 },
		markdownH6Delimiter { fg = colors.purple },

		markdownListMarker  { fg = colors.dark3 },

		RenderMarkdownH1    { fg = colors.magenta },
		RenderMarkdownH2    { fg = colors.orange },
		RenderMarkdownH3    { fg = colors.green },
		RenderMarkdownH4    { fg = colors.cyan },
		RenderMarkdownH5    { fg = colors.blue2 },
		RenderMarkdownH6    { fg = colors.purple },

		RenderMarkdownH1Bg  { fg = colors.magenta },
		RenderMarkdownH2Bg  { fg = colors.orange },
		RenderMarkdownH3Bg  { fg = colors.green },
		RenderMarkdownH4Bg  { fg = colors.cyan },
		RenderMarkdownH5Bg  { fg = colors.blue2 },
		RenderMarkdownH6Bg  { fg = colors.purple },
	}
end)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "org",
			callback = function()
				vim.cmd(string.format([[
				highlight! LineNr guifg=%s guibg=%s
				highlight! CursorLineNr guifg=%s guibg=%s
				]], colors.bg.hex, colors.bg.hex, colors.bg.hex, colors.bg.hex))
			end,
		})

		lush(theme)

		vim.api.nvim_set_hl(0, "@variable",                 { fg = colors.fg.hex })

		--- For C ---
		vim.api.nvim_set_hl(0, "@variable.c",               { fg = colors.fg.hex })
		vim.api.nvim_set_hl(0, "@punctuation.bracket.c",    { fg = colors.fg.hex })
		vim.api.nvim_set_hl(0, "@punctuation.delimiter.c",  { fg = colors.fg.hex })

		--- FOR ORG ---
		vim.api.nvim_set_hl(0, "@org.headline.level1.org",  { fg = colors.magenta.hex })
		vim.api.nvim_set_hl(0, "@org.headline.level2.org",  { fg = colors.orange.hex })
		vim.api.nvim_set_hl(0, "@org.headline.level3.org",  { fg = colors.green.hex })
		vim.api.nvim_set_hl(0, "@org.headline.level4.org",  { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.headline.level5.org",  { fg = colors.blue2.hex })
		vim.api.nvim_set_hl(0, "@org.headline.level6.org",  { fg = colors.purple.hex })

		vim.api.nvim_set_hl(0, "@org.keyword.todo.org",     { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.keyword.done.org",     { fg = colors.green.hex })

		vim.api.nvim_set_hl(0, "@org.bullet.org",           { fg = colors.one_more.hex })
		vim.api.nvim_set_hl(0, "@org.checkbox.org",         { fg = colors.one_more.hex })
		vim.api.nvim_set_hl(0, "@org.tag.org",              { fg = colors.terminal_bl.hex })
		vim.api.nvim_set_hl(0, "@org.checkbox.checked.org", { fg = colors.green.hex })

		vim.api.nvim_set_hl(0, "@org.hyperlink.org",        { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.hyperlink.url.org",    { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.hyperlink.desc.org",   { fg = colors.cyan.hex })

		vim.api.nvim_set_hl(0, "@org.plan.org",             { fg = colors.terminal_bl.hex })
		vim.api.nvim_set_hl(0, "@org.timestamp.active.org", { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.timestamp.inactive.org",{ fg = colors.terminal_bl.hex })

		vim.api.nvim_set_hl(0, "@org.properties.org",       { fg = colors.terminal_bl.hex })
		vim.api.nvim_set_hl(0, "@org.properties.name.org",  { fg = colors.terminal_bl.hex })

		vim.api.nvim_set_hl(0, "@org.table.delimiter.org",  { fg = colors.one_more.hex })
		vim.api.nvim_set_hl(0, "@org.table.heading.org",    { fg = colors.fg.hex })

		vim.api.nvim_set_hl(0, "@org.block.org",            { fg = colors.terminal_bl.hex })


















