local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font({
	family = "MesloLGSDZ Nerd Font",
	weight = "Regular",
	italic = false,
})
config.font_size = 20
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.color_scheme = "kanagawabones"

config.default_prog = {
	"/bin/zsh",
	"-l",
	"-c",
	"tmux attach || tmux new -s 0",
}

return config
