#
# setup dotfiles.
#

install_dotfile() {
    local tools_directory=$1
    local dotfile_name=$2

    ln -Ffsv "${tools_directory}/dotfiles/${dotfile_name}" "$HOME/.${dotfile_name}"
}


setup_dotfiles() {
    local tools_directory=$1
    local dotfiles=(psqlrc gitignore_global)

    for dotfile_name in ${dotfiles[*]}; do
	install_dotfile "$tools_directory" "${dotfile_name}"
    done
}
