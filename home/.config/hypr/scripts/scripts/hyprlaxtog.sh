#!/usr/bin/bash
FLAG="$HOME/.cache/hyprlax_enabled"

if [ -f "$FLAG" ]; then
    rm "$FLAG"
    notify-send "Hyprlax" "Deactivated" -i display
    pkill hyprlax
else
    touch "$FLAG"
    notify-send "Hyprlax" "Activated" -i display
fi
