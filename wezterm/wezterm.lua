local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- General settings
config.animation_fps = 60
config.max_fps = 60
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

-- Theme
config.color_scheme = "nord"

-- Fonts
config.font_size = 11.5
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium" })

config.font_rules = {
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "JetBrainsMono Nerd Font",
			weight = "Bold",
		}),
	},
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({
			family = "VictorMono Nerd Font Mono",
			weight = "Bold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Half",
		font = wezterm.font({
			family = "VictorMono Nerd Font Mono",
			weight = "DemiBold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font({
			family = "VictorMono Nerd Font Mono",
			weight = "Medium",
			style = "Italic",
		}),
	},
}
config.freetype_load_flags = "NO_HINTING"
config.freetype_load_target = "Light"

-- window
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 5,
	right = 10,
	top = 12,
	bottom = 5,
}
--https://github.com/tommynurwantoro/kidwezterm/blob/main/config/appearance.lua

return config
