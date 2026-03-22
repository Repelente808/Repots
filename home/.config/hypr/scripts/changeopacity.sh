#!/bin/bash

# Pega o valor atual da opacidade ativa
# O hyprctl retorna com 6 casas decimais (ex: 0.850000)
STATUS=$(hyprctl getoption decoration:active_opacity | awk 'NR==1{print $2}')

if [ "$STATUS" = "1.000000" ]; then
    # Se estiver sólido, aplica seus valores personalizados
    hyprctl --batch "keyword decoration:active_opacity 0.85; keyword decoration:inactive_opacity 0.93"
    notify-send "Hyprland" "Opacity Custom: 0.85 / 0.93"
else
    # Se estiver com transparência, volta para o sólido
    hyprctl --batch "keyword decoration:active_opacity 1.0; keyword decoration:inactive_opacity 1.0"
    notify-send "Hyprland" "Opacity: Solid (1.0)"
fi
