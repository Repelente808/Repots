#!/bin/bash

if pgrep -x "hypridle" > /dev/null; then
    pkill -x "hypridle"
    notify-send "Hypridle" "Disabled" -i eww
else
    hypridle &
    notify-send "Hypridle" "Enabled" -i eww
fi
