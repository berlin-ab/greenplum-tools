#!/usr/bin/env bash

set -e

change_to_project_root() {
  local project_root=$(git rev-parse --show-toplevel);
  pushd "$project_root";
}

change_to_original_directory() {
  popd;
}

build() {
    make -C gpAux/gpdemo/
}

message_rebuilding() {
  echo "Rebuilding gpdb."
}

function main {
    change_to_project_root
    message_rebuilding
    build
    change_to_original_directory
}

main
