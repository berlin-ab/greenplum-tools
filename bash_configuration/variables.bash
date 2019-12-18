add_scripts_to_path() {
    local tools_directory=$1

    export PATH="$PATH:$tools_directory/scripts"
}

add_home_directory_bin_to_path() {
    export PATH="$PATH:$HOME/bin"
}

add_gopath_to_path() {
    export GOPATH="$HOME/workspace/gopath"
    export PATH="$PATH:${GOPATH//://bin:}/bin"
}

setup_emacs_as_editor() {
    export EDITOR=emacs
    export GIT_EDITOR=emacs
}

setup_locale() {
    export LC_ALL=en_US.UTF-8
}

initialize_variables() {
    local tools_directory=$1

    add_scripts_to_path $tools_directory
    add_home_directory_bin_to_path
    add_gopath_to_path
    setup_emacs_as_editor
    setup_locale
}

