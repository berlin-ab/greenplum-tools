setup_ctags_helpers() {
  alias retag='ctags -e -R . TAGS'
}


tail_last_logfile() {
  tail -n100 "$(ls -t $MASTER_DATA_DIRECTORY/pg_log | head -n1)"
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


source_greenplum() {
    source gpAux/greenplum-db-devel/greenplum_path.sh    
}


source_gpdemo() {
    source gpAux/gpdemo/gpdemo-env.sh    
}


setup_gpdb_7() {
    export MASTER_PORT=7000;
    export STANDBY_PORT=7001;
    export PORT_BASE=7002;

    cd_to_workspace gpdb7
    source_greenplum
    source_gpdemo
}

setup_gpdb_6() {
    export MASTER_PORT=6000;
    export STANDBY_PORT=6001;
    export PORT_BASE=6002;
    
    cd_to_workspace gpdb6
    source_greenplum
    source_gpdemo
}


setup_gpdb_5() {
    export MASTER_PORT=5000;
    export STANDBY_PORT=5001;
    export PORT_BASE=5002;
    
    cd_to_workspace gpdb5
    source_greenplum
    source_gpdemo
}


setup_gpdb_4() {
    export MASTER_PORT=4000;
    export STANDBY_PORT=4001;
    export PORT_BASE=4002;
    
    cd_to_workspace gpdb4
    source_greenplum
    source_gpdemo
}


setup_gpdb_navigation() {
    SOURCE_PG='PATH=$PWD/postgresql-dev/bin:$PATH'

    alias pg="cd_to_workspace postgres && $SOURCE_PG"
    alias 7="setup_gpdb_7"
    alias 6="setup_gpdb_6"
    alias 5="setup_gpdb_5"
    alias 4="setup_gpdb_4"
  
    alias merge="cd_to_workspace gpdb-postgres-merge && $SOURCE_GREENPLUM && $SOURCE_DEMO_ENV"
    alias tools="cd_to_workspace gpdb-tools"
}


setup_debugging_tools() {
    alias p='ps auxww | grep postgres'
    alias pglog='tail_last_logfile'
}


#
# main() function for alias setup.
#
initialize_aliases() {
    setup_debugging_tools
    setup_ctags_helpers
    setup_gpdb_navigation
}

