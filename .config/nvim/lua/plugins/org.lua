require("orgmode").setup({
	org_agenda_files            = "~/org/**/*",
	org_default_notes_file      = "~/org/refile.org",
	org_todo_keywords           = { "TODO(t)", '|', "DONE(d)" },
	org_todo_repeat_to_state    = nil,
	org_deadline_warning_days   = 14,
	org_agenda_min_height       = 16,
	org_agenda_span             = 14,
	org_agenda_start_on_weekday = 1,
	org_agenda_start_day        = nil,
	calendar_week_start_day     = 1,
	calendar = {
		round_min_with_hours = true,
		min_big_step = 15,
	},
	org_capture_templates = {
		t = {
			description = "task",
			template = "* TODO %? [%<%y-%m-%d %H:%M:%S>]\n",
			target = "~/org/tasks.org",
		},

		n = {
			description = "note",
			target = "~/org/jrnl/notes/%<%y-%m-%d>.org",
			template = "\n[%<%H:%M:%S>]\n%?",
		},

		r = {
			description = "refile",
			template = "* TODO %?\n  %u",
		},

		e = {
			description = "ezh",
			target = "~/org/jrnl/ezh/%<%y-%m-%d>.org",
			template =
[[* checklist
- [ ] Зарядка
- [ ] Чтение книги
- [ ] Искупаться
- [ ] Уход за волосами]],
		},
	},
	org_startup_folded = "content",
	org_agenda_skip_scheduled_if_done = false,
	org_agenda_skip_deadline_if_done = false,
	org_agenda_text_search_extra_files = {},
	org_agenda_custom_commands = {},
	org_agenda_hide_empty_blocks = false,
	org_agenda_block_separator = '',
	org_agenda_sorting_strategy = {
		agenda = { "time-up", "priority-down", "category-keep" },
		todo = { "priority-down", "category-keep" },
		tags = { "priority-down", "category-keep" },
	},
	org_agenda_remove_tags = false,
	org_agenda_time_grid = {
		type = { "daily", "today", "require-timed" },
		times = { 800, 1000, 1200, 1400, 1600, 1800, 2000 },
		time_separator = "┄┄┄┄┄",
		time_label = "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄",
	},
	org_agenda_current_time_string = "<- now -----------------------------------------------",
	org_agenda_use_time_grid = true,
	org_agenda_show_future_repeats = true,
	org_priority_highest = 'A',
	org_priority_default = 'B',
	org_priority_lowest = 'C',
	org_priority_start_cycle_with_default = true,
	org_archive_location = "%s_archive::",
	org_tags_column = -80,
	org_use_tag_inheritance = true,
	org_tags_exclude_from_inheritance = {},
	org_hide_leading_stars = false,
	org_hide_emphasis_markers = false,
	org_ellipsis = " ▼ ",
	org_log_done = "time",
	org_log_repeat = "time",
	org_log_into_drawer = nil,
	org_highlight_latex_and_related = nil,
	org_custom_exports = {
		p = {
			label = 'Export to PDF via Pandoc',
			action = function(exporter)
				local current_file = vim.api.nvim_buf_get_name(0)
				local target = vim.fn.fnamemodify(current_file, ':p:r') .. '.pdf'
				local command = {
					'pandoc',
					current_file,
					'-o', target,
					'--from=org',
					'--pdf-engine=xelatex'
				}
				local on_success = function(output)
					print('PDF успешно создан: ' .. target)
				end
				local on_error = function(err)
					print('Ошибка при экспорте PDF:')
					vim.api.nvim_echo({{ table.concat(err, '\n'), 'ErrorMsg' }}, true, {})
				end
				return exporter(command, target, on_success, on_error)
			end
		}
	},
	org_adapt_indentation = true,
	org_startup_indented = false,
	org_indent_mode_turns_off_org_adapt_indentation = true,
	org_indent_mode_turns_on_hiding_stars = true,
	org_time_stamp_rounding_minutes = 5,
	org_cycle_separator_lines = 2,
	org_blank_before_new_entry = {
		heading = true,
		plain_list_item = false,
	},
	org_src_window_setup = "top 16new",
	org_edit_src_content_indentation = 0,
	org_edit_src_filetype_map = {},
	org_id_uuid_program = "uuidgen",
	org_id_ts_format = "%Y%m%d%H%M%S",
	org_id_method = "uuid",
	org_id_prefix = nil,
	org_id_link_to_org_use_id = false,
	org_use_property_inheritance = false,
	org_babel_default_header_args = {
		[":tangle"] = "no",
		[":noweb"] = "no",
	},
	win_split_mode = "float",
	win_border = "rounded",
	notifications = {
		enabled = false,
		cron_enabled = true,
		repeater_reminder_time = false,
		deadline_warning_reminder_time = 0,
		reminder_time = 10,
		deadline_reminder = true,
		scheduled_reminder = true,
	},
	hyperlinks = {
		sources = {},
	},
	mappings = {
		disable_all = false,
		org_return_uses_meta_return = false,
		prefix = "<Leader>o",
		global = {
			org_agenda = "<prefix>a",
			org_capture = "<prefix>c",
		},
		agenda = {
			org_agenda_later = 'f',
			org_agenda_earlier = 'b',
			org_agenda_goto_today = '.',
			org_agenda_day_view = "vd",
			org_agenda_week_view = "vw",
			org_agenda_month_view = "vm",
			org_agenda_year_view = "vy",
			org_agenda_quit = 'q',
			org_agenda_switch_to = "<CR>",
			org_agenda_goto = "<TAB>",
			org_agenda_goto_date = 'J',
			org_agenda_redo = 'r',
			org_agenda_todo = 't',
			org_agenda_open_at_point = "<prefix>o",
			org_agenda_clock_goto = "<prefix>xj",
			org_agenda_set_effort = "<prefix>xe",
			org_agenda_clock_in = 'I',
			org_agenda_clock_out = 'O',
			org_agenda_clock_cancel = 'X',
			org_agenda_clockreport_mode = 'R',
			org_agenda_priority = "<prefix>,",
			org_agenda_priority_up = '+',
			org_agenda_priority_down = '-',
			org_agenda_archive = "<prefix>$",
			org_agenda_toggle_archive_tag = "<prefix>A",
			org_agenda_set_tags = "<prefix>t",
			org_agenda_deadline = "<prefix>id",
			org_agenda_schedule = "<prefix>is",
			org_agenda_filter = '/',
			org_agenda_refile = "<prefix>r",
			org_agenda_add_note = "<prefix>na",
			org_agenda_preview = 'K',
			org_agenda_show_help = "g?",
		},
		capture = {
			org_capture_finalize = "<C-c>",
			org_capture_refile = "<prefix>r",
			org_capture_kill = "<prefix>k",
			org_capture_show_help = "g?",
		},
		note = {
			org_note_finalize = "<C-c>",
			org_note_kill = "<prefix>k",
		},
		org = {
			org_refile = "<prefix>r",
			org_timestamp_up_day = "<S-UP>",
			org_timestamp_down_day = "<S-DOWN>",
			org_timestamp_up = "<C-a>",
			org_timestamp_down = "<C-x>",
			org_change_date = "cid",
			org_priority = "<prefix>,",
			org_priority_up = "ciR",
			org_priority_down = "cir",
			org_todo = "cit",
			org_todo_prev = "ciT",
			org_toggle_checkbox = "<C-Space>",
			org_toggle_heading = "<prefix>*",
			org_open_at_point = "<prefix>o",
			org_edit_special = [[<prefix>"]],
			org_add_note = "<prefix>na",
			org_cycle = "<TAB>",
			org_global_cycle = "<S-TAB>",
			org_archive_subtree = "<prefix>$",
			org_set_tags_command = "<prefix>t",
			org_toggle_archive_tag = "<prefix>A",
			org_do_promote = "<<",
			org_do_demote = ">>",
			org_promote_subtree = "<s",
			org_demote_subtree = ">s",
			org_meta_return = "<Leader><CR>", -- Add heading, item or row (context-dependent)
			org_return = "<CR>",
			org_insert_heading_respect_content = "<prefix>ih", -- Add new heading after current heading block (same level)
			org_insert_todo_heading = "<prefix>iT", -- Add new todo heading right after current heading (same level)
			org_insert_todo_heading_respect_content = "<prefix>it", -- Add new todo heading after current heading block (same level)
			org_move_subtree_up = "<prefix>K",
			org_move_subtree_down = "<prefix>J",
			org_export = "<prefix>e",
			org_next_visible_heading = '}',
			org_previous_visible_heading = '{',
			org_forward_heading_same_level = "]]",
			org_backward_heading_same_level = "[[",
			outline_up_heading = "g{",
			org_deadline = "<prefix>id",
			org_schedule = "<prefix>is",
			org_time_stamp = "<prefix>i.",
			org_time_stamp_inactive = "<prefix>i!",
			org_toggle_timestamp_type = "<prefix>d!",
			org_insert_link = "<prefix>li",
			org_store_link = "<prefix>ls",
			org_clock_in = "<prefix>xi",
			org_clock_out = "<prefix>xo",
			org_clock_cancel = "<prefix>xq",
			org_clock_goto = "<prefix>xj",
			org_set_effort = "<prefix>xe",
			org_show_help = "g?",
			org_babel_tangle = "<prefix>bt",
		},
		edit_src = {
			org_edit_src_abort = "<prefix>k",
			org_edit_src_save = "<prefix>w",
			org_edit_src_save_exit = [[<prefix>']],
			org_edit_src_show_help = "g?",
		},
		text_objects = {
			inner_heading = "ih",
			around_heading = "ah",
			inner_subtree = "ir",
			around_subtree = "ar",
			inner_heading_from_root = "Oh",
			around_heading_from_root = "OH",
			inner_subtree_from_root = "Or",
			around_subtree_from_root = "OR",
		},
	},
	emacs_config = {
		executable_path = "emacs",
		config_path = nil,
	},
	ui = {
		folds = {
			colored = true,
		},
		menu = {
			handler = function(data)
				local options = {}
				local actions = {}

				-- отфильтровываем только MenuOption
				for _, item in ipairs(data.items) do
					if item.key and item.action then
						table.insert(options, item.label)
						actions[item.label] = item.action
					end
				end

				if #options == 0 then return end

				local width = 14

				local padded = {}
				for _, opt in ipairs(options) do
					local padding = width - #opt
					local left = math.floor(padding / 2)
					local right = padding - left
					table.insert(padded, string.rep(" ", left) .. opt .. string.rep(" ", right))
				end

				local buf = vim.api.nvim_create_buf(false, true)
				local height = #options

				local win_width = vim.api.nvim_get_option("columns")
				local win_height = vim.api.nvim_get_option("lines")

				local row = math.floor((win_height - height) / 2)
				local col = math.floor((win_width - width) / 2)

				local win = vim.api.nvim_open_win(buf, true, {
					relative = "editor",
					width = width,
					height = height,
					row = row,
					col = col,
					style = "minimal",
					border = "rounded",
				})

				vim.api.nvim_buf_set_lines(buf, 0, -1, false, padded)
				vim.api.nvim_buf_set_option(buf, "modifiable", false)
				vim.api.nvim_buf_set_option(buf, "bufhidden", "wipe")

				vim.keymap.set("n", "<CR>", function()
					local row = vim.api.nvim_win_get_cursor(win)[1]
					local choice = options[row]
					if choice and actions[choice] then
						actions[choice]()
					end
					vim.api.nvim_win_close(win, true)
				end, {buffer = buf, noremap = true, silent = true})

				vim.keymap.set("n", "<Esc>", function()
					vim.api.nvim_win_close(win, true)
				end, {buffer = buf, noremap = true, silent = true})
			end,
		},
		input = {
			use_vim_ui = false,
		},
		agenda = {
			preview_window = {
				wrap = false,
			},
		},
	},
})

