#!/usr/bin/env bash

set -e


source "$(dirname $0)/lib/shared.bash";


message_rebuilding() {
  echo "Rebuilding gpdb."
}


function main {
    change_to_project_root
    message_rebuilding
    quick_reinstall
    change_to_original_directory
}

main
