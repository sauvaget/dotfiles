#!/bin/bash

# Colors (Grey and Blue palette)
BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#5294e2cc' # Your Wi-Fi blue
TEXT='#eeeeeeff'
WRONG='#ff5555bb'
VERIFY='#5294e2ff'

i3lock \
--insidever-color=$BLANK     \
--ringver-color=$VERIFY      \
\
--insidewrong-color=$BLANK   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$TEXT          \
--bshl-color=$WRONG          \
\
--screen 1                   \
--blur 7                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %B %d"       \
--ring-width 4.0             \
--radius 120                 \
--verif-text="Checking..."   \
--wrong-text="Wrong!"        \
--force-clock                \
--beep                       # Remove this line if you hate the unlock beep

