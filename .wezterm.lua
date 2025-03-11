-- Documentation for config on the official website
-- https://wezfurlong.org/wezterm/config/files.html
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Frappe"

-- config.background = {{
--     source = {
--         File = "./dotfiles/images/flatppuccin.jpg"
--     },
--     hsb = {
--         hue = 1.0,
--         saturation = 1.0,
--         brightness = 0.1
--     },
--     horizontal_align = "Center",
--     vertical_align = "Middle",
--     opacity = 0.9
-- }}

config.window_background_opacity = 0.8

config.tab_max_width = 100

config.use_fancy_tab_bar = false

config.show_tab_index_in_tab_bar = true

config.font = wezterm.font 'Hack Nerd Font'

config.font_size = 12.0

config.window_decorations = "TITLE | RESIZE"

config.tab_max_width = 30

config.window_padding = {
    left = 20,
    right = 20,
    top = 10,
    bottom = 10
}

config.initial_cols = 200
config.initial_rows = 60

config.keys = {
    {
        key = '\r',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = '"',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
  }

return config
