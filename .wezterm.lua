-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'

-- Fonts
config.font = wezterm.font('Fira Code', { weight = 'Medium' })
config.font_size = 12.0

-- Background opacity
config.window_background_opacity = 0.15

-- Window glass and wezterm tab bar 
config.window_decorations = "NONE"
config.enable_tab_bar = false

config.window_frame = {
  active_titlebar_bg = "rgba(0 0 0 0)",
}

-- and finally, return the configuration to wezterm
return config
