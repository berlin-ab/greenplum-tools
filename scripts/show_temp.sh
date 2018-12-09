#!/usr/bin/env bash

list_temporary_postgres_files() {
  ls -la /tmp/.s*
}

main() {
  list_temporary_postgres_files
}

main
