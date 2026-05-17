-- General, decoration, animations, misc
hl.config({
	general = {
		gaps_in = 10,
		gaps_out = 20,
		border_size = 2,
		col = {
			active_border = { colors = { "rgba(ebbcbaff)" } },
			inactive_border = "rgba(00000000)",
		},
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = { enabled = false },
		blur = {
			enabled = true,
			size = 3,
			passes = 3,
			noise = 0.02,
			contrast = 1.0,
			brightness = 1.0,
			vibrancy = 0.0,
			xray = false,
		},
	},

	animations = {
		enabled = false,
	},

	dwindle = {
		preserve_split = true,
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
	},
})

-- Animations
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10 / 2, bezier = "default" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79 / 2, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1 / 2, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49 / 2, bezier = "quick", style = "popin 87%" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03 / 2, bezier = "quick" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94 / 2, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81 / 2, bezier = "easeOutQuint" })
