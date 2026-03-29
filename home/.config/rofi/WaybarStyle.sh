#! /bin/bash

option=$(printf "   Flat Round\n   Flat Square\n   Floating Left\n   Left Flat\n   Round Fly\n   Round Square Fly\n   Floating Top Centered" | rofi -dmenu -p " " -theme "~/.config/rofi/themes/rounded-gray-dark.rasi")
case "$option" in
    "   Flat Round")
        bash $HOME/.config/waybar/alternatives/FlatRound/FlatRound.sh
        ;;
    "   Flat Square")
        bash $HOME/.config/waybar/alternatives/FlatSquare/FlatSquare.sh
        ;;
    "   Floating Left")
	bash $HOME/.config/waybar/alternatives/FloatingLeft/FloatingLeft.sh
	;;
    "   Left Flat")
        bash $HOME/.config/waybar/alternatives/LeftFlat/LeftFlat.sh
        ;;
    "   Round Fly")
        bash $HOME/.config/waybar/alternatives/RoundFly/RoundFly.sh
	;;
    "   Round Square Fly")
        bash $HOME/.config/waybar/alternatives/RoundSquareFly/RoundSquareFly.sh
        ;;
    "   Floating Top Centered")
        bash $HOME/.config/waybar/alternatives/FloatingTopCenter/FloatingTopCenter.sh
	;;
esac
