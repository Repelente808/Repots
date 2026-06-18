#!/bin/bash
STATE="/tmp/hypr_blur"

if [ ! -f "$STATE" ] || [ "$(cat $STATE)" = "true" ]; then
    hyprctl eval 'hl.config({ decoration = { blur = { enabled = false } } })'
    echo "false" > "$STATE"
    notify-send "Hyprland" "Blur disabled"
else
    hyprctl eval 'hl.config({ decoration = { blur = { enabled = true } } })'
    echo "true" > "$STATE"
    notify-send "Hyprland" "Blur enabled"
fi
