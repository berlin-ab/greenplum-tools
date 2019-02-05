change_to_project_root() {
  local project_root=$(git rev-parse --show-toplevel);
  pushd "$project_root";
}


change_to_original_directory() {
  popd;
}


change_to_isolation2_directory() {
    pushd "src/test/isolation2"
}


quick_reinstall() {
    make install -s
}
