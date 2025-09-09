local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font Settings
config.font = wezterm.font({
	family = "MesloLGSDZ Nerd Font Mono",
	weight = "Regular",
	italic = false,
})
config.font_size = 18

config.harfbuzz_features = {
	"calt=0",
	"clig=0",
	"liga=0",
}

-- Color & Theme Settings
config.colors = {
	foreground = "#D8DEE9",
	-- background = "#2E3440",
	background = "#272b35", -- a bit darker than the original
	cursor_bg = "#ECEFF4",
	cursor_border = "#ECEFF4",
	cursor_fg = "#282828",
	selection_bg = "#ECEFF4",
	selection_fg = "#4C566A",

	ansi = {
		"#2E3440", -- changed from nord1 to nord0
		"#bf616a",
		"#a3be8c",
		"#ebcb8b",
		"#81a1c1",
		"#b48ead",
		"#88c0d0",
		"#e5e9f0",
	},
	brights = {
		"#3B4252", -- changed from nord2 to nord1
		"#bf616a",
		"#a3be8c",
		"#ebcb8b",
		"#81a1c1",
		"#b48ead",
		"#8fbcbb",
		"#eceff4",
	},
}

-- Tab Settings
config.enable_tab_bar = false

-- Window Settings
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 10

-- Startup Settings
config.default_prog = {
	"/bin/zsh",
	"-l",
	"-c",
	"tmux attach || tmux new -s terminal",
}

return config
