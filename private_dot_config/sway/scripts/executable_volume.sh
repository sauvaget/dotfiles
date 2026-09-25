#!/bin/bash

# Handle Mouse Interaction
case $BLOCK_BUTTON in
    1) pactl set-sink-mute @DEFAULT_SINK@ toggle ;; # Left click to mute
    4) pactl set-sink-volume @DEFAULT_SINK@ +5% ;; # Scroll up
    5) pactl set-sink-volume @DEFAULT_SINK@ -5% ;; # Scroll down
esac

# Signal i3blocks to refresh immediately
pkill -RTMIN+1 i3blocks

# Get Volume and Mute Status
# Using @DEFAULT_SINK@ ensures this works even if you plug in headphones later
VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)
MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [ "$MUTE" = "yes" ] || [ -z "$VOL" ]; then
    echo "<span size='large' color='#717171'>󰝟</span> Muted"
else
    # Choose icon based on volume level
    if [ "$VOL" -lt 40 ]; then
        ICON="󰕿"
    elif [ "$VOL" -lt 70 ]; then
        ICON="󰖀"
    else
        ICON="󰕾"
    fi
    echo "<span size='large'>$ICON</span> $VOL%"
fi

