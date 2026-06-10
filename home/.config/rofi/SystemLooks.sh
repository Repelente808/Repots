#! /bin/bash

option=$(printf "  CRT Shader Toggle\n  Change Font" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    "  Change Font")
	bash $HOME/.config/hypr/scripts/fontchange.sh
	;;
    "  CRT Shader Toggle")
        bash $HOME/.config/hypr/scripts/oldtv.sh
        ;;
esac
