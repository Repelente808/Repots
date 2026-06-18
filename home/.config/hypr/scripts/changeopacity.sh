#!/bin/bash

STATUS=$(hyprctl getoption decoration.active_opacity -j | jq -r '.float')

if [ "$STATUS" = "1" ] || [ "$STATUS" = "1.0" ] || [ "$STATUS" = "1.000000" ]; then
    hyprctl eval 'hl.config({ decoration = { active_opacity = 0.85, inactive_opacity = 0.93 } })'
    notify-send "Hyprland" "Opacity Custom: 0.85 / 0.93"
else
    hyprctl eval 'hl.config({ decoration = { active_opacity = 1.0, inactive_opacity = 1.0 } })'
    notify-send "Hyprland" "Opacity: Solid 1.0"
fi
