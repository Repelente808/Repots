#! /bin/bash

option=$(printf " Change Font\n󰗘 Disable Animations\n󰗌 Change Opacity\n Change SwayNC Position\n Change Rofi Theme" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")

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
    " Change Rofi Theme")
        change later
        ;;
esac
