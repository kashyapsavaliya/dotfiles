-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Changing the color scheme
config.color_scheme = 'GruvboxDarkHard'

-- Font size
config.font_size = 22.5

-- Font
config.font = wezterm.font 'JetBrainsMono Nerd Font Mono'

-- Hide tab bar
config.enable_tab_bar = false

-- Padding
config.window_padding = {
  left = '5',
  right = '0',
  top = '0',
  bottom = '0',
}

-- Decorations
config.window_decorations = "RESIZE"

-- Cursor
config.cursor_blink_rate = 500
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.default_cursor_style = "BlinkingBlock"

-- Return the config, do not add anything below this line
return config
