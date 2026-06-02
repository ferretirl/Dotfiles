-- ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗██████╗ ██╗   ██╗██╗     ███████╗
-- ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔══██╗██║   ██║██║     ██╔════╝
-- ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║██████╔╝██║   ██║██║     █████╗
-- ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║██╔══██╗██║   ██║██║     ██╔══╝
-- ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝██║  ██║╚██████╔╝███████╗███████╗
--  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝
--------------------------------------------------------------------------------------

-- Floating dialogs
local floatTitles = {
	"^Open File",
	"^Select a File",
	"^Choose wallpaper",
	"^Open Folder",
	"^Save As",
	"^Library",
	"^File Upload",
	".*wants to save$",
	".*wants to open$",
	".*Welcome",
	"^[Pp]icture[-%s]?[Ii]n[-%s]?[Pp]icture",
	".*is sharing (a window|your screen).*",
}
for _, floatd in ipairs(floatTitles) do
	hl.window_rule({ match = { title = floatd }, float = true })
end

-- Floating apps
local floatClasses = {
	"blueberry%.py",
	"guifetch",
	"nm-connection-editor",
	".*plasmawindowed.*",
	"kcm_.*",
	".*bluedevilwizard",
	"org%.freedesktop%.impl%.portal%.desktop%.kde",
	"xdg-desktop-portal-gtk",
	"steam_app_default",
	"pavucontrol-qt",
	"moe.launcher.an-anime-game-launcher",
}
for _, float in ipairs(floatClasses) do
	hl.window_rule({ match = { class = float }, float = true, center = true })
end

-- Focus on activate app list
local focusClasses = {
	"org.gnome.Nautilus",
	"helium.*",
	"brave-origin-.*",
	"dev.noctalia.Noctalia.Settings",
	"[bB]itwarden",
	"[fF]augus-.*",
	"org.prismlauncher.PrismLauncher",
}
for _, focus in ipairs(focusClasses) do
	hl.window_rule({ match = { class = focus }, focus_on_activate = true })
end

-- Opacity for apps
local opacityClasses = {
	-- "com.mitchellh.ghostty",
	"feishin",
	"^[tT]hunar$",
	"dev.noctalia.Noctalia.Settings",
}
for _, opacity in ipairs(opacityClasses) do
	hl.window_rule({ match = { class = opacity }, opacity = 0.87 })
end

-- PiP - pin to all workspaces
hl.window_rule({
	match = { title = "^[Pp]icture[-%s]?[Ii]n[-%s]?[Pp]icture" },
	float = true,
	pin = true,
})

-- Roblox (Sober)
hl.window_rule({
	match = { class = "org%.vinegarhq%.Sober", title = ".*Join.*" },
	float = true,
	size = "1600 900",
})

-- Equibop scratchpad
hl.window_rule({
	match = { class = "equibop" },
	float = false,
	workspace = "special:equibop",
})

-- Feishin scratchpad + opacity
hl.window_rule({
	match = { class = "feishin" },
	float = false,
	workspace = "special:feishin",
})

-- Steam games tearing
hl.window_rule({
	match = { class = "steam_app_.*" },
	immediate = true,
})

-- Fix XWayland drags
hl.window_rule({
	name = "fix-xwayland-drags",
	match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
	no_focus = true,
})

-- Fuckass random maximizing fix + no idling apps
hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
	idle_inhibit = "always",
})
-- Focus browser when clicking on links
hl.window_rule({
	name = "brave-focus",
	match = { class = "brave-origin-beta" },
	focus_on_activate = true,
})
