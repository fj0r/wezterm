local wezterm = require 'wezterm'

wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

local wsl_domains = wezterm.default_wsl_domains()

return {
    color_scheme = "zenbones_dark",
    enable_tab_bar = false,
    set_environment_variables = {
        SHELL = "/usr/local/bin/nu",
    },
    window_decorations = "RESIZE",
    font = wezterm.font {
        family = 'JetBrains Mono',
        weight = 'Light',
        stretch = 'Condensed',
    },
    font_size = 12,
    window_padding = {
        left = 2,
        right = 2,
        top = 0,
        bottom = 0,
    },
    enable_csi_u_key_encoding = true,
    --enable_kitty_keyboard = true,
    warn_about_missing_glyphs = false,
    wsl_domains = wsl_domains,
    default_domain = 'WSL:Ubuntu-22.04',
}
