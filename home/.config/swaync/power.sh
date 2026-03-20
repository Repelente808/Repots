#!/bin/bash

CURRENT=$(powerprofilesctl get)

if [ "$CURRENT" = "performance" ]; then
    powerprofilesctl set balanced
    notify-send "Power Profile" "Balanced mode activated"
else
    powerprofilesctl set performance
    notify-send "Power Profile" "Performance mode activated"
fi
