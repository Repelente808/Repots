#! /bin/bash

option=$(printf " Change Font\n󰗘 Disable Animations\n󰗌 Change Opacity\n Change SwayNC Position\n Rofi Theme 1 Wpp\n Rofi Theme 2 Dyn" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    " Change Font")
	 bash $HOME/.config/hypr/scripts/fontchange.sh
        ;;
    "󰗘 Disable Animations")
         bash $HOME/.config/hypr/scripts/disableanimations.sh
        ;;
    "󰗌 Change Opacity")
         bash $HOME/.config/hypr/scripts/changeopacity.sh
        ;;
    " Change SwayNC Position")
         bash $HOME/.config/hypr/scripts/SwayNCPosition.sh
        ;;
    " Rofi Theme 1 Wpp")
         bash $HOME/.config/hypr/scripts/RofiThemeChanger1.sh
        ;;
    " Rofi Theme 2 Dyn")
         bash $HOME/.config/hypr/scripts/RofiThemeChanger.sh
        ;;
esac
