local wezterm = require("wezterm")
local config = wezterm.config_builder()
local colors = require("lua/rose-pine").colors()
local window_frame = require("lua/rose-pine").window_frame()

config.default_prog = { "pwsh.exe", "-NoLogo" }
config.colors = colors
config.window_frame = window_frame
config.window_padding = { left = 8, right = 8, top = 8, bottom = 8 }
config.window_background_opacity = 0.95
config.initial_rows = 70
config.initial_cols = 140
config.allow_win32_input_mode = false
config.font = wezterm.font("JetBrains Mono", { bold = false, italic = false })
config.hide_tab_bar_if_only_one_tab = true
config.send_composed_key_when_left_alt_is_pressed = false

return config
