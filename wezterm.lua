local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()
local colors = require("lua/rose-pine").colors()
local window_frame = require("lua/rose-pine").window_frame()

-- config.default_prog = { "pwsh.exe", "-NoLogo" }
config.colors = colors
config.window_frame = window_frame
config.max_fps = 120
config.window_padding = { left = 30, right = 30, top = 30, bottom = 30 }
config.window_background_opacity = 0.80
config.macos_window_background_blur = 50
config.window_decorations = "RESIZE"
config.initial_rows = 70
config.initial_cols = 140
config.allow_win32_input_mode = false
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
config.font_size = 14
config.hide_tab_bar_if_only_one_tab = true
config.send_composed_key_when_left_alt_is_pressed = false
-- config.default_prog = { "zellij", "-l", "welcome" }

config.keys = {
	-- This will create a new split and run your default program inside it
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "'",
		mods = "CTRL",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

-- wezterm.on("gui-startup", function(cmd)
-- local tab, pane, window = mux.spawn_window(cmd or {})
-- window:gui_window():maximize()
-- end)

return config
