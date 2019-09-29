#!/usr/bin/env bash

main() {
    echo -e $ROFI_LINES | rofi -font Ubuntu\ 14 -no-fixed-num-lines -dmenu -i -p "$ROFI_PROMPT"
}

main