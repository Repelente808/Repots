#!/bin/bash

HYPR_ANIM=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')

if [ "$HYPR_ANIM" = "1" ]; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:blur:enabled 0;\
        keyword decoration:active_opacity 1.0;\
        keyword decoration:inactive_opacity 1.0"
    
    notify-send -u critical "Hyprland" "GAME MODE: ON (Performance)"
else
    hyprctl --batch "\
        keyword animations:enabled 1;\
        keyword decoration:blur:enabled 1;\
        keyword decoration:active_opacity 0.85;\
        keyword decoration:inactive_opacity 0.93"
    
    notify-send "Hyprland" "GAME MODE: OFF (Visual)"
fi
