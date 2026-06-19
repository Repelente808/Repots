#! /bin/bash

option=$(printf "󰸉  Wallpapers\n󰸉  Hyprlax (Parallax) Toggle\n󰞅  Emoji Picker\n󰨇  BTOP (System Monitor)\n  System Looks (Simplified)\n  Waybar Styles\n  System Customization" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    "󰸉  Wallpapers")
        bash $HOME/.config/rofi/rofi-wallpaper-picker/swww.sh
        ;;
    "󰞅  Emoji Picker")
        rofi -modi emoji -show emoji
        ;;
    "󰸉  Hyprlax (Parallax) Toggle")
        bash $HOME/.config/hypr/scripts/hyprlaxtog.sh
        ;;
    "󰨇  BTOP (System Monitor)" )
        kitty btop
        ;;
    "  System Looks (Simplified)")
        bash $HOME/.config/rofi/SystemLooks.sh
        ;;
    "  Waybar Styles")
        bash $HOME/.config/rofi/WaybarStyle.sh
        ;;
    "  System Customization")
        bash $HOME/.config/rofi/menuCust.sh
        ;;
esac
