#!/bin/bash

HYPR_CONFIG="$HOME/.config/hypr/looknfeel.lua"
MANGO_CONFIG="$HOME/.config/mango/looknfeel.conf"

if [ -f "$MANGO_CONFIG" ]; then
    grep -q "^blur=" "$MANGO_CONFIG" || echo "blur=1" >> "$MANGO_CONFIG"
fi

if [ -f "$HYPR_CONFIG" ]; then
    STATUS=$(awk '/blur\s*=\s*\{/,/\}/ { if ($0 ~ /enabled\s*=/) print $0 }' "$HYPR_CONFIG" | head -n 1 | cut -d'=' -f2 | tr -d ' ,')
else
    VAL=$(grep -E "^blur=" "$MANGO_CONFIG" | cut -d'=' -f2)
    [ "$VAL" = "1" ] && STATUS="true" || STATUS="false"
fi

if [ "$STATUS" = "true" ]; then
    HYPR_VAL="false"
    MANGO_VAL="0"
    MSG="Blur: Disabled"
else
    HYPR_VAL="true"
    MANGO_VAL="1"
    MSG="Blur: Enabled"
fi

if [ -f "$HYPR_CONFIG" ]; then
    sed -i -E "/blur\s*=\s*\{/,/\}/ s/^(\s*enabled\s*=\s*)(true|false)(,?)/\1${HYPR_VAL}\3/" "$HYPR_CONFIG"
fi

if [ -f "$MANGO_CONFIG" ]; then
    sed -i "s/^blur=.*/blur=${MANGO_VAL}/" "$MANGO_CONFIG"
fi

if [ -n "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
    hyprctl reload >/dev/null 2>&1
    notify-send "Hyprland & MangoWM" "$MSG"
elif pgrep -x "mango" >/dev/null; then
    mmsg -s -d reload_config
    notify-send "MangoWM & Hyprland" "$MSG"
fi
