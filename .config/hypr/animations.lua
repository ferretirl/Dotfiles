--  █████╗ ███╗   ██╗██╗███╗   ███╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
-- ██╔══██╗████╗  ██║██║████╗ ████║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
-- ███████║██╔██╗ ██║██║██╔████╔██║███████║   ██║   ██║██║   ██║██╔██╗ ██║
-- ██╔══██║██║╚██╗██║██║██║╚██╔╝██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
-- ██║  ██║██║ ╚████║██║██║ ╚═╝ ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
-- ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
--------------------------------------------------------------------------

-- Self explanatory
hl.config({
	animations = {
		enabled = true,
	},
})
-- Fade off
hl.animation({ leaf = "fade", enabled = false })
hl.animation({ leaf = "fadeOut", enabled = false })

hl.curve("snappy", { type = "bezier", points = { { 0.2, 1 }, { 0.5, 1 } } })
hl.curve("smooth", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })
hl.curve("spring", { type = "spring", mass = 1, stiffness = 30, dampening = 10 })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, spring = "spring", style = "popin" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "snappy", style = "popin" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "snappy" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "snappy", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "snappy", style = "slidevert" })

hl.animation({ leaf = "layers", enabled = false, speed = 2, bezier = "smooth", style = "popin" })
