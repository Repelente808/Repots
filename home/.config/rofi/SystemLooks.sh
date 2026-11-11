#! /bin/bash

option=$(printf "  Change Font\n󰗘  Animations toggle\n󰗌  Blur toggle\n󰗌  Change Opacity\n  Change SwayNC Position\n  Rofi Theme 1 Wpp\n  Rofi Theme 2 Dyn" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

case "$option" in
    "  Change Font")
	 bash $HOME/.config/scripts/fontchange.sh
        ;;
    "󰗘  Animations toggle")
         bash $HOME/.config/scripts/disableanimations.sh
        ;;
    "󰗌  Blur toggle")
         bash $HOME/.config/scripts/DisableBlur.sh
        ;;
    "󰗌  Change Opacity")
         bash $HOME/.config/scripts/changeopacity.sh
        ;;
    "  Change SwayNC Position")
         bash $HOME/.config/scripts/SwayNCPosition.sh
        ;;
    "  Rofi Theme 1 Wpp")
         bash $HOME/.config/scripts/RofiThemeChanger1.sh
        ;;
    "  Rofi Theme 2 Dyn")
         bash $HOME/.config/scripts/RofiThemeChanger.sh
        ;;
esac
