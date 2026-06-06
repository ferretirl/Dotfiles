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
			active_border = { colors = { "rgba(2276b7ff)" } },
			inactive_border = { colors = { "rgba(000000aa)" } },
		},
		border_size = 2,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 2,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = false,
			range = 1,
			render_power = 1,
			color = 0xf03d88ee,
			color_inactive = 0x000000ee,
		},

		blur = {
			enabled = true,
			size = 1,
			passes = 3,
			special = true,
			vibrancy = 0.1695,
			xray = false,
		},
	},
})
