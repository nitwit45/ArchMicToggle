#!/bin/bash

# Get the parent directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set the icon path based on the parent directory
ICON_PATH="$SCRIPT_DIR/"

MIC_STATE=$(amixer get Capture | grep '\[on\]')

if [ -n "$MIC_STATE" ]; then
    amixer set Capture nocap
    dunstify -i "$ICON_PATH/Muted.png" --replace=1 "Microphone Muted"
else
    amixer set Capture cap
    dunstify -i "$ICON_PATH/Unmuted.png" --replace=1 "Microphone Unmuted"
fi
