local lush = require("lush")
local hsl = lush.hsl

local colors = {
	bg      = hsl("#15161E"),
	fg      = hsl("#818AB3"), -- C0CAF5

	bg2     = hsl("#262838"),
	bg3     = hsl("#24293B"),
	bg4     = hsl("#2A334A"),
	bg5     = hsl("#38405C"),
	bg6     = hsl("#565F89"),
	bg7     = hsl("#737AA2"),


	magenta = hsl("#FC0D65"),
	red     = hsl("#BC0000"),
	orange  = hsl("#FF880F"),
	yellow  = hsl("#F6CE4E"),
	green   = hsl("#9ECE6A"),
	cyan    = hsl("#44D3FC"),
}

local theme = lush(function()
	return {

		--- GENERAL ---
		Normal       { fg = colors.fg, bg = colors.bg },
		NormalNC     { fg = colors.fg, bg = colors.bg },
		Cursor       { fg = colors.bg, bg = colors.fg, gui = "bold" },
		CursorLine   { bg = colors.bg },
		CursorLineNr { fg = colors.cyan, gui = "italic" },
		CursorColumn { bg = colors.bg  },
		ColorColumn  { bg = colors.bg3 },
		LineNr       { fg = colors.bg5  },
		Visual       { bg = colors.bg3 },
		VisualNOS    { bg = colors.bg3 },
		VertSplit    { fg = colors.bg  },
		WinSeparator { fg = colors.bg3 },
		Folded       { fg = colors.bg6, bg = colors.bg },
		SignColumn   { bg = colors.bg  },
		Directory    { fg = colors.cyan, gui = "bold" },
		EndOfBuffer  { fg = colors.bg  },
		Whitespace   { fg = colors.bg3 },
		NonText      { fg = colors.bg6 },
		MatchParen   { fg = colors.magenta, bg = colors.bg3, gui = "bold" },
		Search       { bg = colors.magenta, fg = colors.bg },
		IncSearch    { bg = colors.yellow, fg = colors.bg },
		Delimiter    { bg = colors.bg, fg = colors.fg },

		MsgArea      { bg = colors.bg, fg = colors.bg5 },
		ModeMsg      { bg = colors.bg, fg = colors.bg5 },

		-- Messages
		ErrorMsg     { fg = colors.magenta },
		WarningMsg   { fg = colors.yellow },
		Question     { fg = colors.green },
		MoreMsg      { fg = colors.green },

		-- Syntax
		Character    { fg = colors.magenta },
		Comment      { fg = colors.bg6, gui = "italic" },
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
		PmenuSbar  { bg = colors.bg3 },

		-- LSP
		DiagnosticError  { fg = colors.red },
		DiagnosticWarn   { fg = colors.yellow },
		DiagnosticInfo   { fg = colors.fg },
		DiagnosticHint   { fg = colors.fg },

		DiagnosticVirtualTextError { fg = colors.bg7 },
		DiagnosticVirtualTextWarn  { fg = colors.bg7 },
		DiagnosticVirtualTextInfo  { fg = colors.bg7 },
		DiagnosticVirtualTextHint  { fg = colors.bg7 },

		DiagnosticUnderlineError { sp = colors.red, gui = "underline" },
		DiagnosticUnderlineWarn  { sp = colors.bg7, gui = "underline" },
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
		OilFileHidden { fg = colors.bg7, bg = colors.bg },
		OilDir        { fg = colors.cyan,  bg = colors.bg },
		OilDirHidden  { fg = colors.bg7, bg = colors.bg },
		OilDirIcon    { fg = colors.cyan,  bg = colors.bg },
		OilFile       { fg = colors.fg,    bg = colors.bg },

		FloatBorder   { fg = colors.bg4, bg = colors.bg },
		NormalFloat   { bg = colors.bg },

		Title         { fg = colors.bg5, gui = "bold" }, -- NEED FIX --

		-- DEV ICO
		DevIconDefault { fg = colors.cyan },
		DevIcon        { fg = colors.cyan },

		-- PICKER
		MiniPickNormal        { fg = colors.fg, bg = colors.bg },
		MiniPickMatchCurrent  { fg = colors.cyan, bg = colors.bg3 },
		MiniPickBorder        { fg = colors.bg4, bg = colors.bg },
		MiniPickBorderText    { fg = colors.bg6, bg = colors.bg },
		MiniPickHeader        { fg = colors.bg6, bg = colors.bg },
		MiniPickMatchMarked   { fg = colors.fg, bg = colors.bg3 },
		MiniPickPrompt        { fg = colors.bg6, bg = colors.bg },

		--- BLINK ---
		BlinkCmpMenu              { fg = colors.fg, bg = colors.bg },
		BlinkCmpMenuBorder        { fg = colors.bg4, bg = colors.bg },
		BlinkCmpMenuSelection     { fg = colors.bg, bg = colors.fg, gui = "bold" },

		-- ICO
		BlinkCmpKind                { fg = colors.cyan, bg = colors.bg },

		BlinkCmpDoc                 { fg = colors.cyan, bg = colors.bg },
		BlinkCmpDocBorder           { fg = colors.bg4, bg = colors.bg },
		blinkcmpdocseparator        { fg = colors.bg4, bg = colors.bg },
		BlinkCmpSignatureHelp       { fg = colors.fg, bg = colors.bg3 },
		BlinkCmpSignatureHelpBorder { fg = colors.bg4, bg = colors.bg },

		-- C --
		cType     { fg = colors.cyan, bg = colors.bg, gui = "bold" },
		cInclude  { fg = colors.fg, bg = colors.bg },
		cIncluded { fg = colors.magenta, bg = colors.bg },
		cNumber   { fg = colors.magenta, bg = colors.bg },
		cSpecial  { fg = colors.cyan },
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
		vim.api.nvim_set_hl(0, "@org.headline.level4.org",  { fg = colors.magenta.hex })
		vim.api.nvim_set_hl(0, "@org.headline.level5.org",  { fg = colors.orange.hex })
		vim.api.nvim_set_hl(0, "@org.headline.level6.org",  { fg = colors.green.hex })

		vim.api.nvim_set_hl(0, "@org.keyword.todo.org",     { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.keyword.done.org",     { fg = colors.green.hex })

		vim.api.nvim_set_hl(0, "@org.bullet.org",           { fg = colors.bg4.hex })
		vim.api.nvim_set_hl(0, "@org.checkbox.org",         { fg = colors.bg4.hex })
		vim.api.nvim_set_hl(0, "@org.tag.org",              { fg = colors.bg5.hex })
		vim.api.nvim_set_hl(0, "@org.checkbox.checked.org", { fg = colors.green.hex })

		vim.api.nvim_set_hl(0, "@org.hyperlink.org",        { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.hyperlink.url.org",    { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.hyperlink.desc.org",   { fg = colors.cyan.hex })

		vim.api.nvim_set_hl(0, "@org.plan.org",             { fg = colors.bg5.hex })
		vim.api.nvim_set_hl(0, "@org.timestamp.active.org", { fg = colors.cyan.hex })
		vim.api.nvim_set_hl(0, "@org.timestamp.inactive.org",{ fg = colors.bg5.hex })

		vim.api.nvim_set_hl(0, "@org.properties.org",       { fg = colors.bg5.hex })
		vim.api.nvim_set_hl(0, "@org.properties.name.org",  { fg = colors.bg5.hex })

		vim.api.nvim_set_hl(0, "@org.table.delimiter.org",  { fg = colors.bg4.hex })
		vim.api.nvim_set_hl(0, "@org.table.heading.org",    { fg = colors.fg.hex })

		vim.api.nvim_set_hl(0, "@org.block.org",            { fg = colors.bg6.hex, bg = colors.bg2.hex })
