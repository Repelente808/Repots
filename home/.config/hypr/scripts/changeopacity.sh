#!/bin/bash

STATUS=$(hyprctl getoption decoration:active_opacity | awk 'NR==1{print $2}')

if [ "$STATUS" = "1.000000" ]; then
    hyprctl --batch "keyword decoration:active_opacity 0.85; keyword decoration:inactive_opacity 0.93"
    notify-send "Hyprland" "Opacity Custom: 0.85 / 0.93"
else
    hyprctl --batch "keyword decoration:active_opacity 1.0; keyword decoration:inactive_opacity 1.0"
    notify-send "Hyprland" "Opacity: Solid 1.0"
fi
