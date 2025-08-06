local wezterm = require("wezterm")

return {
	-- window_decorations = "NONE",
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	show_tab_bar_if_only_one_tab = false,

	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	font = wezterm.font("JetBrainsMono Nerd Font Mono"),
	font_size = 12,

	-- this shit often bugs neovim's colorscheme for some reason
	-- color_scheme = "Builtin Dark",

	enable_scroll_bar = false,

	front_end = "WebGpu",
	max_fps = 60,
}
