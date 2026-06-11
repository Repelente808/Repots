mkdir -p "$HOME/Recordings"

if pgrep -x "wf-recorder" > /dev/null; then
    pkill -SIGINT wf-recorder
    notify-send "Recording Stopped" "Recording complete saved in folder ~/Recordings."
else
    wf-recorder --audio=@DEFAULT_SINK@.monitor -f "$HOME/Recordings/Rec_$(date +%d-%m-%Y_%H-%M-%S).mp4" &

    notify-send "Recording" "Starting Desktop Recording (no mic)..."
fi
