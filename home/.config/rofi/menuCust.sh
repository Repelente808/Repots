#! /bin/bash

option=$(printf "Waybar\nSwayNC\nRofi\nKitty\nHyprland\nHyprlock" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    "Waybar")
         kitty --hold nano "$HOME/.config/waybar/style.css"
        ;;
    "SwayNC")
         kitty --hold nano "$HOME/.config/swaync/themes/nova-dark/central_control.css"
        ;;
    "Rofi")
         kitty --hold nano "$HOME/.config/rofi/themes/rounded-gray-dark.rasi"
        ;;
    "Kitty")
         kitty --hold nano "$HOME/.config/kitty/kitty.conf"
        ;;
    "Hyprland")
         kitty --hold nano "$HOME/.config/hypr/hyprland.lua"
        ;;
    "Hyprlock")
        kitty --hold nano "$HOME/.config/hypr/hyprlock.conf"
        ;;
esac
