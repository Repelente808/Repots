#!/bin/bash
STATE="/tmp/hypr_anim"

if [ ! -f "$STATE" ] || [ "$(cat $STATE)" = "true" ]; then
    hyprctl eval 'hl.config({ animations = { enabled = false } })'
    hyprctl eval 'hl.animation({ leaf = "global", enabled = false })'
    echo "false" > "$STATE"
    notify-send "Hyprland" "Animations disabled"
else
    hyprctl eval 'hl.config({ animations = { enabled = true } })'
    hyprctl eval 'hl.animation({ leaf = "global", enabled = true, speed = 8 })'
    echo "true" > "$STATE"
    notify-send "Hyprland" "Animations enabled"
fi
