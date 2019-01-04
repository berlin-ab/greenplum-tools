function setup_ctags_helpers {
  alias retag='ctags -e -R . TAGS'
}

tail_last_logfile() {
  tail -n100 -f "$(ls -t | head -n1)"
}

get_pids() {
  awk '{print $2}'
}

kill_pids() {
  local pids_to_kill
  
  pids_to_kill=$(get_pids | tr '\n' ' ')
  echo "Killing $pids_to_kill"
  kill "$pids_to_kill" > /dev/null 2>&1
}

cd_to_workspace() {
  local workspace_directory=$1;
  local new_directory="$HOME/workspace/$workspace_directory"
  echo "Switching to $workspace_directory: $new_directory"
  cd "$new_directory";
}

function setup_gpdb_navigation {
  SOURCE_GREENPLUM='source gpAux/greenplum-db-devel/greenplum_path.sh'
  SOURCE_DEMO_ENV='source gpAux/gpdemo/gpdemo-env.sh'
  SOURCE_PG='PATH=$PWD/postgresql-dev/bin:$PATH'

  alias pg="cd_to_workspace postgres && $SOURCE_PG"
  alias 6="cd_to_workspace gpdb && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
  alias 5="cd_to_workspace gpdb5 && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
  alias 4="cd_to_workspace gpdb4 && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
  alias merge="cd_to_workspace gpdb-postgres-merge && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
  alias tools="cd_to_workspace gpdb-tools"
  alias pglog='cd $MASTER_DATA_DIRECTORY/pg_log && tail_last_logfile'
}

function setup_debugging_tools {
  alias p='ps auxww | grep postgres'
}

function initialize_aliases {
  setup_debugging_tools
  setup_ctags_helpers
  setup_gpdb_navigation
}

