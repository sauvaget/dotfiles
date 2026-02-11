#!/bin/bash

chosen=$(echo -e "  Power Off\n󰑐  Reboot\n󰍃  Log Out\n󰒲  Suspend\n  Lock" | rofi -dmenu -i -p "System" -theme-str 'window {width: 15%;}')

case "$chosen" in
    "  Power Off") poweroff ;;
    "󰑐  Reboot") reboot ;;
    "󰍃  Log Out") i3-msg exit ;;
    "󰒲  Suspend") systemctl suspend ;;
    "  Lock") i3lock ;; # Or your preferred locker
esac

