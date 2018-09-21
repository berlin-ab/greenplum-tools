
function setup_ctags_helpers {
  alias retag='ctags -e -R . TAGS'
}

function setup_gpdb_navigation {
  SOURCE_GREENPLUM='source gpAux/greenplum-db-devel/greenplum_path.sh'
  SOURCE_DEMO_ENV='source gpAux/gpdemo/gpdemo-env.sh'

  alias 6="cd $HOME/workspace/gpdb/ && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
  alias 5="cd $HOME/workspace/gpdb5/ && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
  alias 4="cd $HOME/workspace/gpdb4/ && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
  alias merge="cd $HOME/workspace/gpdb-postgres-merge && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
  alias tools="cd $HOME/workspace/gpdb-tools"
  alias pglog='cd $MASTER_DATA_DIRECTORY/pg_log && ll'
}

function disable_vim {
  VIM_COMMAND="echo 'Disabled vim. Please use emacs.'"

  alias vim=$VIM_COMMAND
  alias vi=$VIM_COMMAND
}

function setup_debugging_tools {
  alias p='ps auxww | grep postgres'
}

function main {
  echo "Using $HOME/workspace/gpdb-tools."
  setup_debugging_tools
  setup_ctags_helpers
  setup_gpdb_navigation
  disable_vim
}

main
