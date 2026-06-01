--  █████╗ ██████╗ ██████╗ ███████╗ █████╗ ██████╗  █████╗ ███╗   ██╗ ██████╗███████╗
-- ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝
-- ███████║██████╔╝██████╔╝█████╗  ███████║██████╔╝███████║██╔██╗ ██║██║     █████╗
-- ██╔══██║██╔═══╝ ██╔═══╝ ██╔══╝  ██╔══██║██╔══██╗██╔══██║██║╚██╗██║██║     ██╔══╝
-- ██║  ██║██║     ██║     ███████╗██║  ██║██║  ██║██║  ██║██║ ╚████║╚██████╗███████╗
-- ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝
-------------------------------------------------------------------------------------
---

hl.config({
	general = {
		gaps_in = 10,
		gaps_out = 40,
		col = {
			active_border = { colors = { "rgba(ffffffee)" } },
			inactive_border = { colors = { "rgba(000000aa)" } },
		},
		border_size = 1,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 11,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 1,
			render_power = 1,
			color = 0xffffffee,
			color_inactive = 0x000000ee,
		},

		blur = {
			enabled = true,
			size = 2,
			passes = 3,
			special = true,
			vibrancy = 0.1696,
			xray = false,
		},
	},
})
