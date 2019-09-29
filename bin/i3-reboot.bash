#!/usr/bin/env bash
bin_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

main() {
  export ROFI_ACTION="reboot"

  ${bin_dir}/rofi-confirm.bash && reboot
}

main