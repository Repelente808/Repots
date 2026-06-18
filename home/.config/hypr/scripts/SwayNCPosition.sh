#!/bin/bash
CONFIG="$HOME/.config/swaync/config.json"

if grep -q '"control-center-positionX": "center"' "$CONFIG" || grep -q '"positionX": "center"' "$CONFIG"; then
    sed -i 's/"positionX": "center"/"positionX": "right"/' "$CONFIG"
    sed -i 's/"control-center-positionX": "center"/"control-center-positionX": "right"/' "$CONFIG"
    sed -i 's/"control-center-positionX": "none"/"control-center-positionX": "right"/' "$CONFIG"
    notify-send "SwayNC" "Setted to the right"
else
    sed -i 's/"positionX": "right"/"positionX": "center"/' "$CONFIG"
    sed -i 's/"control-center-positionX": "right"/"control-center-positionX": "center"/' "$CONFIG"
    sed -i 's/"control-center-positionX": "none"/"control-center-positionX": "center"/' "$CONFIG"
    notify-send "SwayNC" "Setted to the center"
fi

killall swaync
swaync &
