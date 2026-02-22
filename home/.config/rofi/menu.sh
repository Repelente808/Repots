#! /bin/bash

option=$(printf "󰸉 Wallpapers\n󰞅 Emoji Picker\n System Customization" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    "󰸉 Wallpapers")
        bash $HOME/.config/rofi/rofi-wallpaper-picker/swww.sh
        ;;
    "󰞅 Emoji Picker")
        rofi -modi emoji -show emoji
        ;;
    " System Customization")
        bash $HOME/.config/rofi/menuCust.sh
        ;;
esac
