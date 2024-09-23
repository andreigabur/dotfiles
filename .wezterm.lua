-- Documentation for config on the official website
-- https://wezfurlong.org/wezterm/config/files.html
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'

config.background = {{
    source = {
        File = './.config/images/flatppuccin.png'
        -- Gradient={preset="Warm"}
    },
    hsb = {
        hue = 1.0,
        saturation = 1.0,
        brightness = 0.2
    },
    horizontal_align = "Center",
    vertical_align = "Middle",
    opacity = 0.9
}}

config.use_fancy_tab_bar = false

config.show_tab_index_in_tab_bar = true

config.colors = {
    tab_bar = {
        background = "rgba(0,0,0,0)"
    }
}

config.font = wezterm.font 'Hack Nerd Font'

config.font_size = 12.0

config.window_decorations = "RESIZE"

config.window_padding = {
    left = 20,
    right = 20,
    top = 10,
    bottom = 10
}

return config
