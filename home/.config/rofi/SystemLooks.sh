#! /bin/bash

option=$(printf "  Change Font" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    "  Change Font")
        bash $HOME/.config/hypr/scripts/fontchange.sh
        ;;
esac
