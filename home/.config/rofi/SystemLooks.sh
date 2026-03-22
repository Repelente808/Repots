#! /bin/bash

option=$(printf " Opacity Toggle\n Animations Toggle\n Blur Toggle\n󰨇 Game Mode\n CRT Shader Toggle" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    "󰨇 Game Mode" )
        bash $HOME/.config/hypr/scripts/gamemode.sh
        ;;
    " Opacity Toggle")
        bash $HOME/.config/hypr/scripts/changeopacity.sh
        ;;
    " Animations Toggle")
        bash $HOME/.config/hypr/scripts/disableanimations.sh
        ;;
    " Blur Toggle")
        bash $HOME/.config/hypr/scripts/disableblur.sh
        ;;
    " CRT Shader Toggle")
        bash $HOME/.config/hypr/scripts/oldtv.sh
        ;;
esac
