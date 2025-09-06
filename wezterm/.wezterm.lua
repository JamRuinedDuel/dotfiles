local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font Settings
config.font = wezterm.font({
	family = "MesloLGSDZ Nerd Font",
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
config.color_scheme = "nord"

-- Tab Settings
config.enable_tab_bar = false

-- Window Settings
config.window_decorations = "RESIZE"

-- Startup Settings
config.default_prog = {
	"/bin/zsh",
	"-l",
	"-c",
	"tmux attach || tmux new -s terminal",
}

return config
