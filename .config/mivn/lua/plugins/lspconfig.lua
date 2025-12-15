local runtime_paths = {
	vim.env.VIMRUNTIME,
	vim.fn.stdpath("data") .. "/site/pack/*/start/*",
	vim.fn.stdpath("data") .. "/site/pack/*/opt/*",
}

vim.lsp.enable('marksman')
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')

vim.lsp.semantic_tokens.disable = true

vim.lsp.config('clangd', {
	on_attach = function(client, bufnr)
		client.server_capabilities.semanticTokensProvider = nil
	end,
})

local signs = {
	Error = " ",
	Warn  = " ",
	Hint  = " ",
	Info  = " "
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end


vim.lsp.config('lua_ls', {
	on_attach = function(client, bufnr)
		client.server_capabilities.semanticTokensProvider = nil
	end,

	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = runtime_paths,
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
