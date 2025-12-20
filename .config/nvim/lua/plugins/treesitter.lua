return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local ok, tsconfigs = pcall(require, "nvim-treesitter.configs")
			if not ok then
				vim.notify("nvim-treesitter not installed", vim.log.levels.WARN)
				return
			end

			tsconfigs.setup {
				ensure_installed = {
					"lua",
				},
				ignore_install = { 'org' },
				highlight = { enable = true },
				indent = { enable = true },
			}
		end,
	},
}
