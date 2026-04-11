#!/bin/bash

STATUS=$(hyprctl getoption decoration:blur:enabled | awk 'NR==1{print $2}')

if [ "$STATUS" = "1" ]; then
    hyprctl keyword decoration:blur:enabled 0
    notify-send "Hyprland" "Blur: OFF"
else
    hyprctl keyword decoration:blur:enabled 1
    notify-send "Hyprland" "Blur: ON"
fi
