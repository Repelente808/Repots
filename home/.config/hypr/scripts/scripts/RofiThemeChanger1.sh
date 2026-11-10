bababa
#!/bin/bash

rm "$HOME/.config/rofi/themes/template/rounded-template.rasi"

cp -f "$HOME/.config/rofi/variants/withwallpaper/rounded-template.rasi" "$HOME/.config/rofi/themes/template"

pkill waybar
sleep 0.2
waybar &
notify-send "Rofi" "Wallpaper variant applied"
