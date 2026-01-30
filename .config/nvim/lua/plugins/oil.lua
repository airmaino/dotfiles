require("oil").setup({

	cleanup_delay_ms = false,
	columns = {
		"icon"
	},

	view_options = {
		show_hidden = true,
		show_banner = true,
		preview = true,
		indent_size = 2,
	},

	keymaps = {
		["<CR>"]        = "actions.select",
		["-"]           = "actions.parent",
		["g."]          = "actions.toggle_hidden",
		["<C-r>"]       = "actions.refresh"
	},

	float = {
		padding = 0,
		max_width = 45,
		max_height = 20,
		border = "rounded",
	},

	win_options = {
		winhighlight = "Normal:OilNormal,CursorLine:OilCursorLine",
	},

	default_file_explorer = true,
	delete_to_trash = false,
	follow_current_file = true,
	show_hidden_on_startup = true,
	restore_cursor_position = true,
	skip_confirm_for_simple_edits = false,

	preview = {
		enabled = true,
		width = 40,
		height = 20,
		wrap = false,
	},

	sort_options = {
		method = "name",
		ascending = true,
		folders_first = true,
	},

	buffer_options = {
		signcolumn = "no",
		buflisted = true,
		swapfile = false,
		bufhidden = "hide",
		filetype = "oil",
	},

	lsp_file_operations = {
		enable = false,
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "oil",
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.opt_local.signcolumn = "no"
		vim.opt_local.foldcolumn = "0"
	end
})
