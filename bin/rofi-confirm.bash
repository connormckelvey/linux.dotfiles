#!/usr/bin/env bash
bin_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

main() {
  export ROFI_PROMPT="Are you sure you want to ${ROFI_ACTION}?"
  export ROFI_LINES="No\nYes"
  
  response=$("${bin_dir}/rofi-prompt.bash")
  if [[ $response == "Yes" ]]; then
      exit
  else
      exit 1
  fi
}

main "$@"