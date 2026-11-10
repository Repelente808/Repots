#!/bin/bash

HYPR_CONFIG="$HOME/.config/hypr/looknfeel.lua"
MANGO_CONFIG="$HOME/.config/mango/looknfeel.conf"

if [ -f "$MANGO_CONFIG" ]; then
    grep -q "^focused_opacity=" "$MANGO_CONFIG" || echo "focused_opacity=1.0" >> "$MANGO_CONFIG"
    grep -q "^unfocused_opacity=" "$MANGO_CONFIG" || echo "unfocused_opacity=1.0" >> "$MANGO_CONFIG"
fi

if [ -f "$HYPR_CONFIG" ]; then
    STATUS=$(grep -E "^\s*active_opacity\s*=" "$HYPR_CONFIG" | head -n 1 | cut -d'=' -f2 | tr -d ' ,')
else
    STATUS=$(grep -E "^focused_opacity=" "$MANGO_CONFIG" | cut -d'=' -f2)
fi

if [ "$STATUS" = "1" ] || [ "$STATUS" = "1.0" ]; then
    ACTIVE_VAL="0.85"
    INACTIVE_VAL="0.93"
    MSG="Opacity Custom: 0.85 / 0.93"
else
    ACTIVE_VAL="1.0"
    INACTIVE_VAL="1.0"
    MSG="Opacity: Solid 1.0"
fi

if [ -f "$HYPR_CONFIG" ]; then
    sed -i -E "s/^(\s*active_opacity\s*=\s*)[0-9.]+(,?)/\1${ACTIVE_VAL}\2/" "$HYPR_CONFIG"
    sed -i -E "s/^(\s*inactive_opacity\s*=\s*)[0-9.]+(,?)/\1${INACTIVE_VAL}\2/" "$HYPR_CONFIG"
fi

if [ -f "$MANGO_CONFIG" ]; then
    sed -i "s/^focused_opacity=.*/focused_opacity=${ACTIVE_VAL}/" "$MANGO_CONFIG"
    sed -i "s/^unfocused_opacity=.*/unfocused_opacity=${INACTIVE_VAL}/" "$MANGO_CONFIG"
fi

if [ -n "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
    hyprctl reload >/dev/null 2>&1
    notify-send "Hyprland & MangoWM" "$MSG"
elif pgrep -x "mango" >/dev/null; then
    mmsg -s -d reload_config
    notify-send "MangoWM & Hyprland" "$MSG"
fi
