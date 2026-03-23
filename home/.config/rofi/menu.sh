#! /bin/bash

option=$(printf "󰸉 Wallpapers\n󰸉 Wallpapers White Mode\n󰸉 Hyprlax (Parallax) Toggle\n󰞅 Emoji Picker\n Screen Recording Toggle\n󰨇 BTOP (System Monitor)\n System Looks (Simplified)\n System Customization" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

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
    "󰸉 Hyprlax (Parallax) Toggle")
	bash $HOME/.config/hypr/scripts/hyprlaxtog.sh
	;;
    " Screen Recording Toggle")
       bash $HOME/.config/hypr/scripts/recording.sh
        ;;
    "󰨇 BTOP (System Monitor)" )
        kitty btop
        ;;
    " System Looks (Simplified)")
        bash $HOME/.config/rofi/SystemLooks.sh
        ;;
    " System Customization")
        bash $HOME/.config/rofi/menuCust.sh
        ;;
esac
