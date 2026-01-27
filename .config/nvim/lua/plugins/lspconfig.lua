vim.lsp.enable({
	"clangd",
	"lua_ls",
	"org"
})

vim.lsp.config["lua_ls"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
	settings = {
		Lua = {
 			diagnostics = {
				globals = {
					"vim",

					"Normal", "NormalNC", "Cursor", "CursorLine", "CursorColumn", "ColorColumn",
					"LineNr", "CursorLineNr", "Visual", "VisualNOS", "VertSplit", "WinSeparator",
					"Folded", "SignColumn", "Directory", "EndOfBuffer", "Whitespace", "NonText",
					"MatchParen", "Search", "IncSearch", "Delimiter", "MsgArea", "ModeMsg",

					-- Messages
					"ErrorMsg", "WarningMsg", "Question", "MoreMsg",

					-- Syntax
					"Character", "Comment", "Constant", "Number", "String", "Todo",
					"Function", "Type", "Identifier", "Statement", "Operator",
					"Keyword", "PreProc", "Special",

					-- Statusline & Tabs
					"StatusLine", "StatusLineNC", "TabLine", "TabLineSel", "TabLineFill",

					-- Popup
					"Pmenu", "PmenuSel", "PmenuSbar",

					-- Diagnostics
					"DiagnosticError", "DiagnosticWarn", "DiagnosticInfo", "DiagnosticHint",
					"DiagnosticVirtualTextError", "DiagnosticVirtualTextWarn",
					"DiagnosticVirtualTextInfo", "DiagnosticVirtualTextHint",
					"DiagnosticUnderlineError", "DiagnosticUnderlineWarn",
					"DiagnosticUnderlineInfo", "DiagnosticUnderlineHint",

					-- Oil
					"OilNormal", "OilFileHidden", "OilDir", "OilDirHidden",
					"OilDirIcon", "OilFile",

					-- Float
					"FloatBorder", "NormalFloat", "Title",

					-- DevIcons
					"DevIconDefault", "DevIcon",

					-- MiniPick
					"MiniPickNormal", "MiniPickMatchCurrent", "MiniPickBorder",
					"MiniPickBorderText", "MiniPickHeader", "MiniPickMatchMarked",
					"MiniPickPrompt",

					-- Blink
					"BlinkCmpMenu", "BlinkCmpMenuBorder", "BlinkCmpMenuSelection",
					"BlinkCmpKind", "BlinkCmpDoc", "BlinkCmpDocBorder",
					"blinkcmpdocseparator", "BlinkCmpSignatureHelp",
					"BlinkCmpSignatureHelpBorder",

 					-- C
					"cType", "cInclude", "cIncluded", "cNumber", "cSpecial",

					-- Markdown / RenderMarkdown
					"RenderMarkdownQuote1", "RenderMarkdownQuote2", "RenderMarkdownQuote3",
					"RenderMarkdownQuote4", "RenderMarkdownQuote5", "RenderMarkdownQuote6",

					"RenderMarkdownInfo",

					"RenderMarkdownUnchecked", "RenderMarkdownChecked",
					"RenderMarkdownRenderMarkdownTodo", "RenderMarkdownInprocess",

					"RenderMarkdownBullet",

					"RenderMarkdownCode", "RenderMarkdownCodeIndo",
					"RenderMarkdownCodeLanguage",

					"RenderMarkdownDash",

					"RenderMarkdownTableHead", "RenderMarkdownTableRow",
					"RenderMarkdownTableFill",

					"markdownH1", "markdownH2", "markdownH3",
					"markdownH4", "markdownH5", "markdownH6",

					"markdownH1Delimiter", "markdownH2Delimiter", "markdownH3Delimiter",
					"markdownH4Delimiter", "markdownH5Delimiter", "markdownH6Delimiter",

					"markdownListMarker",

					"RenderMarkdownH1", "RenderMarkdownH2", "RenderMarkdownH3",
					"RenderMarkdownH4", "RenderMarkdownH5", "RenderMarkdownH6",

					"RenderMarkdownH1Bg", "RenderMarkdownH2Bg", "RenderMarkdownH3Bg",
					"RenderMarkdownH4Bg", "RenderMarkdownH5Bg", "RenderMarkdownH6Bg",
				},
			},
			runtime = {
				version = "LuaJIT",
			}
		}
	}
}

vim.lsp.config["clangd"] = {
	cmd = { "clangd" },
	filetypes = { 'c', "cpp", "objc", "objcpp" },
	settings = {
	},
}

vim.diagnostic.config({
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},

	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = 'E',
			[vim.diagnostic.severity.WARN]  = 'W',
			[vim.diagnostic.severity.INFO]  = 'I',
			[vim.diagnostic.severity.HINT]  = 'H'
		},

		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN]  = "WarningMsg",
			[vim.diagnostic.severity.INFO]  = "InfoMsg",
			[vim.diagnostic.severity.HINT]  = "HintMsg"
		},

	},

})
