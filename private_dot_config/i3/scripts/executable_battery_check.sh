#!/bin/bash

# Thresholds
LOW_BATT=20
CRITICAL_BATT=10

while true; do
    # Get battery percentage and status (Charging/Discharging)
    BAT_PATH=$(find /sys/class/power_supply/ -name "BAT*" | head -n 1)
    PERCENT=$(cat "$BAT_PATH/capacity")
    STATUS=$(cat "$BAT_PATH/status")

    if [ "$STATUS" = "Discharging" ]; then
        if [ "$PERCENT" -le "$CRITICAL_BATT" ]; then
            notify-send -u critical -i battery-empty "Battery Critical" "Only $PERCENT% left! Plug in NOW."
        elif [ "$PERCENT" -le "$LOW_BATT" ]; then
            notify-send -u normal -i battery-caution "Battery Low" "You are at $PERCENT%. Think about a charger."
        fi
    fi
    
    # Check every 2 minutes
    sleep 120
done

