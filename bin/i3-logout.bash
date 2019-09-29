#!/usr/bin/env bash
bin_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

main() {
  export ROFI_ACTION="logout"
  
  ${bin_dir}/rofi-confirm.bash && i3-msg exit
}

main