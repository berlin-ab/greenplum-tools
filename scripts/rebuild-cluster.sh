#!/usr/bin/env bash

set -e


source "$(dirname $0)/lib/shared.bash";


build() {
    make -C gpAux/gpdemo/
}


create_personal_database() {
    createdb
}


message_rebuilding() {
  echo "Rebuilding gpdb."
}


function main {
    change_to_project_root
    message_rebuilding
    build
    create_personal_database
    change_to_original_directory
}


main
