-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --all")
    hl.exec_cmd("bash -c 'sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP'")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("ydotoold")
    hl.exec_cmd("qs -c noctalia-shell")
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 24")
end)
