source "$HOME/workspace/git/contrib/completion/git-completion.bash"
source "$HOME/workspace/git/contrib/completion/git-prompt.sh"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM="verbose git name"
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "\n[\u@\h:\w]\n" " \\\$ "'