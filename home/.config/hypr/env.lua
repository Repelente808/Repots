
---@module 'hl'

--############################

--## ENVIRONMENT VARIABLES ###

--############################

-- See https://wiki.hypr.land/Configuring/Environment-variables/

hl.env("XCURSOR_SIZE", 24)

hl.env("HYPRCURSOR_SIZE", 24)

hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")

hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")

hl.env("QT_QPA_PLATFORMTHEME", "gtk3")





hl.define_submap("global", function()
    -- submap: disable_hyprland_logo = true
end)


-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-black-dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface font-name 'Google Sans 12'")
end)
