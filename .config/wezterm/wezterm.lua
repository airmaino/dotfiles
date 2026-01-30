local wezterm = require 'wezterm'

local config = {}

config.font = wezterm.font {
	family = "SF Mono",
	weight = "Medium",
}

config.font_size = 16

config.window_padding = {
	left = 4,
	right = 0,
	top = 6,
	bottom = 0,
}

config.enable_scroll_bar = false
config.enable_wayland = true

config.colors = {
	foreground     = '#44D3FC',
	background     = '#15161E',

	cursor_bg      = '#818AB3',
	cursor_fg      = '#15161E',

	selection_bg   = '#24293B',
	selection_fg   = '#818AB3',

	compose_cursor = '#818AB3',

	ansi = {
		'#15161E',
		'#F22E52',
		'#9ECE6A',
		'#FABA4A',
		'#7AA2F7',
		'#FC0D65',
		'#44D3FC',
		'#818AB3',

	},

	brights = {
		'#414868',
		'#F5617C',
		'#B6DC8F',
		'#E0AF68',
		'#6694FA',
		'#C7A9FF',
		'#44D3FC',
		'#C0CAF5',
	},

}

config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 10000

config.scrollback_lines = 10000

config.default_prog = { "/bin/zsh", "-l" }

config.window_decorations = "NONE"
config.window_background_opacity = 1.0

config.animation_fps = 60
config.max_fps = 144
config.front_end = "WebGpu"

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

return config
