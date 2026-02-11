#!/bin/bash

# Handle Mouse Wheel
case $BLOCK_BUTTON in
    4) brightnessctl set +5% > /dev/null; pkill -RTMIN+10 i3blocks ;;
    5) brightnessctl set 5%- > /dev/null; pkill -RTMIN+10 i3blocks ;;
esac

# Output for i3blocks (Current % and Icon)
# We use 'm' for max and 'g' for current
BRIGHTNESS=$(brightnessctl g)
MAX=$(brightnessctl m)
PERCENT=$(( 100 * BRIGHTNESS / MAX ))

echo "$PERCENT%"

