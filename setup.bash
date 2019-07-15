# Initialize gpdb tools

main() {
	local tools_setup_file_path="${BASH_SOURCE[0]}"
	local tools_directory=$(dirname $tools_setup_file_path)

	echo "Using $tools_directory."

	source "$tools_directory/bash_configuration/aliases.bash"
	source "$tools_directory/bash_configuration/variables.bash"
	source "$tools_directory/dotfiles/setup.bash"

	initialize_variables $tools_directory
	initialize_aliases
	setup_dotfiles $tools_directory
}

main
