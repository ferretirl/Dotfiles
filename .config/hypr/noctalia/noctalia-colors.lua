-- Noctalia colors for Hyprland (auto-generated, do not edit)

local primary = "rgb(cba6f7)"
local surface = "rgba(1e1e2ebf)"
local secondary = "rgb(f5c2e7)"
local error_color = "rgb(f38ba8)"
local tertiary = "rgb(b4befe)"
local surface_lowest = "rgb(212232)"

hl.config({
    general = {
        col = {
            active_border = primary,
            inactive_border = surface,
        },
    },

    group = {
        col = {
            border_active = secondary,
            border_inactive = surface,
            border_locked_active = error_color,
            border_locked_inactive = surface,
        },

        groupbar = {
            col = {
                active = secondary,
                inactive = surface,
                locked_active = error_color,
                locked_inactive = surface,
            },
        },
    },
})
