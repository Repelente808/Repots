#! /bin/bash

option=$(printf "󰸉 Wallpapers\n󰸉 Wallpapers White Mode\n󰞅 Emoji Picker\n󰨇 BTOP (System Monitor)\n System Looks (simplified)\n System Customization" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    "󰸉 Wallpapers")
        bash $HOME/.config/rofi/rofi-wallpaper-picker/swww.sh
        ;;
    "󰸉 Wallpapers White Mode")
        bash $HOME/.config/rofi/rofi-wallpaper-picker/swwwwhite.sh
        ;;
    "󰞅 Emoji Picker")
        rofi -modi emoji -show emoji
        ;;
    "󰨇 BTOP (System Monitor)" )
        kitty btop
        ;;
    " System Looks (simplified)")
        bash $HOME/.config/rofi/SystemLooks.sh
        ;;
    " System Customization")
        bash $HOME/.config/rofi/menuCust.sh
        ;;
esac
