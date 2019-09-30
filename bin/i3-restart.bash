#!/usr/bin/env bash
bin_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

main() {
  pkill compton
  i3-msg restart
  compton
}

main