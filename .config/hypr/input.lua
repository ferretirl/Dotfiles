-- Input
hl.config({
    input = {
        kb_layout = "cz,us",
        kb_options = "grp:alt_shift_toggle",
        repeat_delay = 250,
        repeat_rate = 35,
        numlock_by_default = true,
        sensitivity = -0.9,
        follow_mouse = 1,
        mouse_refocus = true,
    },
})

-- XWayland
hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})
