
---@module 'hl'

--################

--## AUTOSTART ###

--################

-- Autostart necessary processes (like notifications daemons, status bars, etc>

-- Or execute your favorite apps at launch like this:

-- exec-once = $terminal

-- exec-once = nm-applet &

-- exec-once = waybar & hyprpaper & firefox











-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("waybar &")
    hl.exec_cmd("qs -c overview")
    hl.exec_cmd("swww-daemon")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("swww img ~/.config/hypr/hyprlock_assets/current_wallpaper.jpg")
    hl.exec_cmd("hyprctl reload")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("~/.config/hypr/scripts/parallax.sh")
end)

-- Exec (run every reload)
hl.on("config.reloaded", function()
    hl.exec_cmd("hyprctl dispatch submap global")
end)
