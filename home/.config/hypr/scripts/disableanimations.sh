#!/bin/bash

# Pega o estado atual das animações
STATUS=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')

if [ "$STATUS" = "1" ]; then
    hyprctl keyword animations:enabled 0
    notify-send "Hyprland" "Animações: OFF"
else
    hyprctl keyword animations:enabled 1
    notify-send "Hyprland" "Animações: ON"
fi
