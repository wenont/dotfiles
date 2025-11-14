#!/bin/env bash

MAIN_KB_CAPS=$(hyprctl devices | grep -B 6 "main: yes" | grep "capsLock" | head -1 | awk '{print $2}')

if [ "$MAIN_KB_CAPS" = "yes" ]; then
    echo "Caps Lock active"
else
    echo ""
fi

# https://github.com/end-4/dots-hyprland/blob/main/.config/hypr/hyprlock/check-capslock.sh