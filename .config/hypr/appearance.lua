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
			active_border = {
				colors = {
					"rgba(E28C00ff)",
					"rgba(F2B870ff)",
					"rgba(FAF0E4ff)",
					"rgba(8BBFD6ff)",
					"rgba(6A9AB8ff)",
				},
				angle = 45,
			},
			inactive_border = "rgba(1a1a1aaa)",
		},
		border_size = 2,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 5,
		rounding_power = 20,
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = false,
			range = 1,
			render_power = 1,
			color = 0xf4346bee,
			color_inactive = 0x000000ee,
		},

		blur = {
			enabled = true,
			size = 2,
			passes = 3,
			special = true,
			vibrancy = 0.1695,
			xray = false,
		},
	},
})
