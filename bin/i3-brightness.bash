#!/usr/bin/env bash
bin_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

get_current_output() {
   xrandr --verbose | grep ' connected' | awk '{print $1}'
}

current_brightness() {
  xrandr --verbose | grep ' connected' -A 10 | grep Brightness | cut -f2 -d ' ' | head -n1
}

set_brightness() {
  local cur="$(get_current_output)"
  xrandr --output "${cur}" --brightness "${1}"
}

inc() {
  local cur="$(current_brightness)"
 echo "Current brightness: ${cur}"

  case "$cur" in
    "1.0")
        set_brightness "1.0"
        ;;
    "0.90")
        set_brightness "1.0"
        ;;
    "0.80")
        set_brightness "0.9"
        ;;
    "0.70")
        set_brightness "0.8"
        ;;
    "0.60")
        set_brightness "0.7"
        ;;
    "0.50")
        set_brightness "0.6"
        ;;
    "0.40")
        set_brightness "0.5"
        ;;
    "0.30")
        set_brightness "0.4"
        ;;
    "0.20")
        set_brightness "0.3"
        ;;
    "0.10")
        set_brightness "0.2"
        ;;
    "0.0")
        set_brightness "0.1"
        ;;
  esac
}

dec() {
  local cur=$(current_brightness)
  echo "Current brightness: ${cur}" 
  
  case "$cur" in
    "1.0")
        set_brightness "0.9"
        ;;
    "0.90")
        set_brightness "0.8"
        ;;
    "0.80")
        set_brightness "0.7"
        ;;
    "0.70")
        set_brightness "0.6"
        ;;
    "0.60")
        set_brightness "0.5"
        ;;
    "0.50")
        set_brightness "0.4"
        ;;
    "0.40")
        set_brightness "0.3"
        ;;
    "0.30")
        set_brightness "0.2"
        ;;
    "0.20")
        set_brightness "0.1"
        ;;
    "0.10")
        set_brightness "0.0"
        ;;
    "0.0")
        set_brightness "1.0"
        ;;
  esac
}

main() {
  case "$1" in
    inc) echo "Increasing brightness"
        inc
        ;;
    dec) echo "Decreasing brightness"
        dec
        ;;
    *) echo "Invalid option"
        exit 1
        ;;
    esac
}

main "$1"