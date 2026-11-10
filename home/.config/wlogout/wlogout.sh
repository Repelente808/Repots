#!/usr/bin/env bash
A_1080=400
B_1080=400
	
if pgrep -x "wlogout" > /dev/null; then
    pkill -x "wlogout"
    exit 0
fi

raw_height=$(wlr-randr --json | jq -r '[.[] | select(.enabled==true)][0].modes[] | select(.current==true) | .height')
scale=$(wlr-randr --json | jq -r '[.[] | select(.enabled==true)][0].scale')

raw_height=${raw_height:-1080}
scale=${scale:-1}

resolution=$(awk "BEGIN {printf \"%.0f\", $raw_height / $scale}")
top_margin=$(awk "BEGIN {printf \"%.0f\", $A_1080 * 1080 * $scale / $resolution}")
bottom_margin=$(awk "BEGIN {printf \"%.0f\", $B_1080 * 1080 * $scale / $resolution}")

wlogout -C "$HOME/.config/wlogout/style.css" \
        -l "$HOME/.config/wlogout/layout" \
        --protocol layer-shell \
        -b 4 \
        -T "$top_margin" \
        -B "$bottom_margin" &
