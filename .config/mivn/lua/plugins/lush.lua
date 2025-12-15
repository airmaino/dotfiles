local lush = require("lush")
local hsl = lush.hsl

local colors = {
	bg             = hsl("#15161E"),
	bg2            = hsl("#262838"),
	terminal_black = hsl("#24293B"),
	one_more       = hsl("#2A334A"),
	terminal_bl    = hsl("#38405c"),
	dark3          = hsl("#565f89"),
	dark5          = hsl("#737AA2"),
	fg             = hsl("#C0CAF5"),

	blue0 = hsl("#394B70"),
	blue2 = hsl("#356CE6"),
	blue  = hsl("#7AA2F7"),

	magenta  = hsl("#FF007C"),
	magenta2 = hsl("#f24499"),
	red1     = hsl("#E04C67"),
	red      = hsl("#F7768E"),
	orange   = hsl("#FF9E64"),
	yellow   = hsl("#E0AF68"),
	purple   = hsl("#a27be8"),
	cyan     = hsl("#7DCFFF"),
	teal     = hsl("#1ABC9C"),
	green    = hsl("#9ECE6A"),
}

local theme = lush(function()
	return {

		Normal       { fg = colors.fg, bg = colors.bg },
		NormalNC     { fg = colors.fg, bg = colors.bg },
		Cursor       { fg = colors.bg, bg = colors.fg, gui = "bold" },
		CursorLine   { bg = colors.bg },
		CursorColumn { bg = colors.bg },
		ColorColumn  { bg = colors.bg },
		LineNr       { fg = colors.dark3 },
		CursorLineNr { fg = colors.orange, gui = "italic" },
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

		FoldDots     { fg = colors.terminal_bl, bg = colors.bg },

		-- Search
		Search     { bg = colors.orange, fg = colors.bg },
		IncSearch  { bg = colors.yellow, fg = colors.bg },

		-- Messages
		ErrorMsg    { fg = colors.red },
		WarningMsg  { fg = colors.yellow },
		Question    { fg = colors.green },
		MoreMsg     { fg = colors.green },
		ModeMsg     { fg = colors.fg },

		-- Syntax
		Character   { fg = colors.green },
		Comment     { fg = colors.dark3, gui = "italic" },
		Constant    { fg = colors.orange },
		Number      { fg = colors.orange },
		String      { fg = colors.green },
		Todo        { fg = colors.fg, bg = colors.cyan, gui = "bold" },
		Function    { fg = colors.cyan, gui = "bold" },
		Type        { fg = colors.cyan },
		Identifier  { fg = colors.fg },
		Statement   { fg = colors.fg },
		Operator    { fg = colors.fg },
		Keyword     { fg = colors.fg },
		PreProc     { fg = colors.fg },
		Special     { fg = colors.fg },

		-- Diff
		DiffAdd    { bg = hsl("#20303B") },
		DiffChange { bg = hsl("#2E2E45") },
		DiffDelete { bg = hsl("#3B1E27") },
		DiffText   { bg = hsl("#3C5380") },

		-- Statusline & Tabs
		StatusLine     { fg = colors.fg, bg = colors.bg },
		StatusLineNC   { fg = colors.fg, bg = colors.bg },
		TabLine        { fg = colors.fg, bg = colors.bg },
		TabLineSel     { fg = colors.fg, bg = colors.cyan },
		TabLineFill    { bg = colors.bg },

		-- Popup Menu
		Pmenu      { fg = colors.fg, bg = colors.bg },
		PmenuSel   { fg = colors.bg, bg = colors.blue },
		PmenuThumb { bg = colors.blue0 },
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

		--	Treesitter
		--	TSComment         { Comment },
		--	TSString          { String },
		--	TSCharacter       { String },
		--	TSNumber          { Constant },
		--	TSBoolean         { Constant },
		--	TSConstant        { Constant },
		--
		--	TSFunction        { Function },
		--	TSFuncBuiltin     { fg = colors.fg },
		--	TSMethod          { fg = colors.fg },
		--	TSConstructor     { Function },
		--	TSType            { Function },
		--	TSTypeDefinition  { Function },

		--	TSVariable        { fg = colors.fg },
		--	TSVariableBuiltin { fg = colors.fg },
		--	TSProperty        { fg = colors.fg },
		--	TSField           { fg = colors.fg },
		--	TSParameter       { fg = colors.fg },
		--	TSOperator        { fg = colors.fg },
		--	TSKeyword         { fg = colors.fg },
		--	TSKeywordReturn   { fg = colors.fg },
		--	TSPunctDelimiter  { fg = colors.fg },
		--	TSPunctBracket    { fg = colors.fg },
		--	TSPunctSpecial    { fg = colors.fg },

		["@variable"]           = { fg = colors.fg },
		["@variable.member"]    = { fg = colors.fg },
		["@variable.builtin"]   = { fg = colors.fg },
		["@parameter"]          = { fg = colors.fg },
		["@property"]           = { fg = colors.fg },
		["@field"]              = { fg = colors.fg },
		["@string"]             = { fg = colors.green },
		["@character"]          = { fg = colors.green },
		["@boolean"]            = { fg = colors.orange },
		["@number"]             = { fg = colors.orange },
		["@constant"]           = { fg = colors.orange },

		["@function"]           = { fg = colors.blue },
		["@function.builtin"]   = { fg = colors.blue },
		["@method"]             = { fg = colors.blue },
		["@constructor"]        = { fg = colors.blue },

		["@type"]               = { fg = colors.fg },
		["@type.builtin"]       = { fg = colors.fg },

		["@lsp.type.variable"]  = { fg = colors.fg },
		["@lsp.type.property"]  = { fg = colors.fg },
		["@lsp.type.parameter"] = { fg = colors.fg },
		["@lsp.type.field"]     = { fg = colors.fg },
		["@lsp.type.type"]      = { fg = colors.fg },
		["@lsp.type.function"]  = { fg = colors.cyan },
		["@lsp.type.method"]    = { fg = colors.cyan },

		-- OIL
		OilNormal    { fg = colors.fg, bg = colors.bg },
		FloatBorder  { fg = colors.cyan, bg = colors.bg },
		NormalFloat  { fg = colors.fg,  bg = colors.bg },
		Title        { fg = colors.cyan, gui = "bold" },

		-- BLINK
		BlinkCmpMenu          { fg = colors.fg, bg = colors.bg },
		BlinkCmpMenuBorder    { fg = colors.cyan, bg = colors.bg },
		BlinkCmpMenuSelection { fg = colors.bg, bg = colors.blue },

		-- Scrollbar
		BlinkCmpScrollBar        { bg = colors.terminal_black },
		BlinkCmpScrollBarThumb   { bg = colors.blue },

		-- Completion item kinds
		BlinkCmpKindText          { fg = colors.cyan },
		BlinkCmpKindMethod        { fg = colors.blue },
		BlinkCmpKindFunction      { fg = colors.blue },
		BlinkCmpKindConstructor   { fg = colors.orange },
		BlinkCmpKindField         { fg = colors.teal },
		BlinkCmpKindVariable      { fg = colors.teal },
		BlinkCmpKindClass         { fg = colors.yellow },
		BlinkCmpKindInterface     { fg = colors.yellow },
		BlinkCmpKindModule        { fg = colors.purple },
		BlinkCmpKindProperty      { fg = colors.teal },
		BlinkCmpKindUnit          { fg = colors.cyan },
		BlinkCmpKindValue         { fg = colors.green },
		BlinkCmpKindEnum          { fg = colors.orange },
		BlinkCmpKindKeyword       { fg = colors.purple },
		BlinkCmpKindSnippet       { fg = colors.red },
		BlinkCmpKindColor         { fg = colors.green },
		BlinkCmpKindFile          { fg = colors.blue },
		BlinkCmpKindReference     { fg = colors.orange },
		BlinkCmpKindFolder        { fg = colors.blue },
		BlinkCmpKindEnumMember    { fg = colors.orange },
		BlinkCmpKindConstant      { fg = colors.orange },
		BlinkCmpKindStruct        { fg = colors.yellow },
		BlinkCmpKindEvent         { fg = colors.red },
		BlinkCmpKindOperator      { fg = colors.cyan },
		BlinkCmpKindTypeParameter { fg = colors.yellow },

		-- Completion
		BlinkCmpLabel             { fg = colors.fg },
		BlinkCmpLabelDeprecated   { fg = colors.fg, gui = "strikethrough" },
		BlinkCmpLabelMatch        { fg = colors.yellow, gui = "bold" },
		BlinkCmpLabelDetail       { fg = colors.blue },

		-- Документация
		BlinkCmpDoc         { fg = colors.fg, bg = colors.bg },
		BlinkCmpDocBorder   { fg = colors.blue, bg = colors.bg },

		-- Подсветка активного параметра
		BlinkCmpSignatureHelp                { fg = colors.yellow },
		BlinkCmpSignatureHelpBorder          { fg = colors.yellow },
		BlinkCmpSignatureHelpActiveParameter { fg = colors.orange, gui = "bold" },


		-- IBL
		IblIndent                   { fg = colors.terminal_black },
		IblWhitespace               { fg = colors.terminal_black },
		IndentBlanklineChar         { fg = colors.terminal_black },
		IndentBlanklineSpaceChar    { fg = colors.terminal_black },
		IndentBlanklineContextChar  { fg = colors.terminal_black, gui = "bold" },
		IndentBlanklineContextStart { sp = colors.terminal_black, gui = "underline" },
		IblScope                    { fg = colors.cyan },

		-- MINI.PICK
		MiniPickMatchCurrent        { fg = colors.fg, bg = colors.terminal_black },

		-- MD
	
		["@markup.heading.1.markdown"] = { fg = colors.magenta2, gui = "bold" },
		["@markup.heading.2.markdown"] = { fg = colors.orange,   gui = "bold" },
		["@markup.heading.3.markdown"] = { fg = colors.green,    gui = "bold" },
		["@markup.heading.4.markdown"] = { fg = colors.cyan,     gui = "bold" },
		["@markup.heading.5.markdown"] = { fg = colors.blue2,    gui = "bold" },
		["@markup.heading.6.markdown"] = { fg = colors.purple,   gui = "bold" },

		RenderMarkdownH1Bg          { bg = colors.bg, fg = colors.magenta2 },
		RenderMarkdownH2Bg          { bg = colors.bg, fg = colors.orange },
		RenderMarkdownH3Bg          { bg = colors.bg, fg = colors.green },
		RenderMarkdownH4Bg          { bg = colors.bg, fg = colors.cyan },
		RenderMarkdownH5Bg          { bg = colors.bg, fg = colors.blue2 },
		RenderMarkdownH6Bg          { bg = colors.bg, fg = colors.purple },

		RenderMarkdownQuote1        { bg = colors.bg, fg = colors.magenta2 },
		RenderMarkdownQuote2        { bg = colors.bg, fg = colors.orange },
		RenderMarkdownQuote3        { bg = colors.bg, fg = colors.green },
		RenderMarkdownQuote4        { bg = colors.bg, fg = colors.cyan },
		RenderMarkdownQuote5        { bg = colors.bg, fg = colors.blue2 },
		RenderMarkdownQuote6        { bg = colors.bg, fg = colors.purple },

		RenderMarkdownUnchecked     { bg = colors.bg, fg = colors.fg },
		RenderMarkdownChecked       { bg = colors.bg, fg = colors.green },
		RenderMarkdownInProcess     { bg = colors.bg, fg = colors.orange },
		RenderMarkdownImportant     { bg = colors.bg, fg = colors.red },
		RenderMarkdownHoho          { bg = colors.bg, fg = colors.magenta },
		RenderMarkdownPlus          { bg = colors.bg, fg = colors.blue2 },

		RenderMarkdownCode          { bg = colors.bg2 },
		RenderMarkdownCodeBorder    { bg = colors.bg2, fg = colors.green },

		RenderMarkdownTableHead     { bg = colors.bg, fg = colors.terminal_bl },
		RenderMarkdownTableRow      { bg = colors.bg, fg = colors.terminal_bl },

		RenderMarkdownDash          { bg = colors.bg, fg = colors.terminal_bl },
	}
end)

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.cmd(string.format([[
		highlight! LineNr guifg=%s guibg=%s
		highlight! CursorLineNr guifg=%s guibg=%s
		]], colors.bg.hex, colors.bg.hex, colors.bg.hex, colors.bg.hex))
	end,
})

return theme
