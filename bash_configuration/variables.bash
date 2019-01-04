
add_scripts_to_path() {
	local tools_directory=$1

	export PATH="$PATH:$tools_directory/scripts"
}

add_home_directory_bin_to_path() {
	export PATH="$PATH:$HOME/bin"
}

setup_vim_as_git_editor() {
	export GIT_EDITOR=vim
}

initialize_variables() {
	local tools_directory=$1

	add_scripts_to_path $tools_directory
	add_home_directory_bin_to_path
	setup_vim_as_git_editor
}
