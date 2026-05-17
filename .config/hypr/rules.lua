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
for _, t in ipairs(floatTitles) do
	hl.window_rule({ match = { title = t }, float = true })
end

-- Floating apps
local floatClasses = {
	"blueberry%.py",
	"guifetch",
	"pavucontrol",
	"org%.pulseaudio%.pavucontrol",
	"nm-connection-editor",
	".*plasmawindowed.*",
	"kcm_.*",
	".*bluedevilwizard",
	"org%.freedesktop%.impl%.portal%.desktop%.kde",
	"xdg-desktop-portal-gtk",
	"steam_app_default",
}
for _, c in ipairs(floatClasses) do
	hl.window_rule({ match = { class = c }, float = true })
end

-- PiP - pin to all workspaces
hl.window_rule({
	match = { title = "^[Pp]icture[-%s]?[Ii]n[-%s]?[Pp]icture" },
	float = true,
	pin = true,
})

-- Anime game launcher
hl.window_rule({
	match = { class = "moe%.launcher%.an-anime-game-launcher" },
	float = true,
	size = "1400 800",
})

-- Roblox (Sober)
hl.window_rule({
	match = { class = "org%.vinegarhq%.Sober", title = ".*Join.*" },
	float = true,
	size = "1600 900",
})

-- equibop scratchpad
hl.window_rule({
	match = { class = "equibop" },
	float = true,
	workspace = "special:equibop",
})

-- feishin scratchpad + opacity
hl.window_rule({
	match = { class = "feishin" },
	float = true,
	workspace = "special:feishin",
	opacity = 0.95,
})

-- Steam games tearing
hl.window_rule({
	match = { class = "steam_app_.*" },
	immediate = true,
})

-- Opacity rules
hl.window_rule({ match = { class = "^thunar$" }, opacity = 0.95 })
hl.window_rule({ match = { class = "^com.mitchellh.ghostty$" }, opacity = 0.95 })
hl.window_rule({ match = { class = "^brave-origin-beta$" }, opacity = 0.95 })
hl.window_rule({ match = { title = "YouTube - Brave" }, opacity = 1.0 })

-- Fix XWayland drags
hl.window_rule({
	name = "fix-xwayland-drags",
	match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
	no_focus = true,
})
