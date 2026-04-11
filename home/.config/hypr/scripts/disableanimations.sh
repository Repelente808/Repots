#!/bin/bash

STATUS=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')

if [ "$STATUS" = "1" ]; then
    hyprctl keyword animations:enabled 0
    notify-send "Hyprland" "Animations: OFF"
else
    hyprctl keyword animations:enabled 1
    notify-send "Hyprland" "Animations: ON"
fi
