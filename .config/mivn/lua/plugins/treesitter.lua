local ok, tsconfigs = pcall(require, "nvim-treesitter.configs")

if not ok then
	vim.notify("nvim-treesitter not installed", vim.log.levels.WARN)
	return
end

tsconfigs.setup {
	ensure_installed = { "markdown", "markdown_inline", "lua" },
	highlight = { enable = true },
	indent = { enable = true },
}
