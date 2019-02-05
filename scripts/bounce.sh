#!/usr/bin/env bash

set -e

source "$(dirname $0)/lib/shared.bash";


function restart {
    gpstop -ra
}


message_rebuilding() {
  echo "Rebuilding gpdb."
}


message_restarting() {
  echo "Restarting gpdb."
}


function main {
    change_to_project_root
    message_rebuilding
    quick_reinstall
    message_restarting
    restart
    change_to_original_directory
}

main
