local wezterm = require 'wezterm'

local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
    local _, _, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Macchiato'
config.font_size = 11
config.line_height = 1.00
config.freetype_load_target = 'Light'
config.freetype_load_flags = 'NO_HINTING'
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "NONE"
config.window_background_opacity = 0.8
config.window_padding = {
    left = 60,
    right = 60,
    top = 20,
    bottom = 20,
}
config.use_fancy_tab_bar = false
config.colors = {
    tab_bar = {
        background = 'rgba(0, 0, 0, 0.8)', 
    },
    background = 'black'
}

return config 
