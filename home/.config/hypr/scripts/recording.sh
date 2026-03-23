#!/bin/bash

# Verifica se o wf-recorder já está rodando
if pgrep -x "wf-recorder" > /dev/null; then
    pkill -SIGINT wf-recorder
    notify-send "Recording Stopped" "Recording complete saved in folder /Vídeos/Rec."
else
    wf-recorder --audio=$(pactl get-default-sink).monitor -f "$HOME/Vídeos/Rec/Rec_$(date +%d-%m-%Y_%H-%M-%S).mp4" &
    notify-send "Recording" "Starting Desktop Recording (no mic)..."
fi
