# GPDB Tools

- A collection of bash scripts, variables, and aliases to aid in GPDB development.
- Editor configurations:
   * emacs
   * (hopefully more soon)

## Installation

1.

`source /path/to/gpdb-tools/setup.bash`

2. 

Edit your emacs configuration to include:

`(load-file "~/workspace/gpdb-tools/emacs-config.el")`


## Aliases

```
$ 6
Switching to gpdb: ~/workspace/gpdb
```

```
$ 5
Switching to gpdb5: ~/workspace/gpdb5
```

```
$ 4
Switching to gpdb4: ~/workspace/gpdb4
```

```
$ tools
Switching to gpdb-tools: ~/workspace/gpdb-tools
```

### pglog: changes directory to and opens a tail of the latest log file in the master pg_log directory
```
$ pglog
2019-01-04 09:59:56.884185 EST,,,p14972,th-321595008,,,,0,,,seg-1,,,,,"LOG","00000","FTS: segment (content=1, dbid=3, role=p) reported isMirrorUp 1, isInSync 1, isSyncRepEnabled 1, isRoleMirror 0, and retryRequested 0 to the prober.",,,,,,,0,,"ftsprobe.c",628,
2019-01-04 09:59:56.885745 EST,,,p14972,th-321595008,,,,0,,,seg-1,,,,,"LOG","00000","FTS: segment (content=0, dbid=2, role=p) reported isMirrorUp 1, isInSync 1, isSyncRepEnabled 1, isRoleMirror 0, and retryRequested 0 to the prober.",,,,,,,0,,"ftsprobe.c",628,
2019-01-04 09:59:56.885781 EST,,,p14972,th-321595008,,,,0,,,seg-1,,,,,"LOG","00000","FTS: segment (content=2, dbid=4, role=p) reported isMirrorUp 1, isInSync 1, isSyncRepEnabled 1, isRoleMirror 0, and retryRequested 0 to the prober.",,,,,,,0,,"ftsprobe.c",628,

... continued
```

### p: lists postgres processes
```
$ p
jdoe+  15201  0.0  0.0 347892  7308 ?        Ss   09:40   0:00 postgres: 16432, startup process   recovering 000000010000000000000003
jdoe+  15214  0.0  0.0 347644  5612 ?        Ss   09:40   0:00 postgres: 16432, checkpointer process   
jdoe+  15216  0.0  0.0 347644  4936 ?        Ss   09:40   0:00 postgres: 16432, writer process   
jdoe+  15220  0.0  0.0 347644  5736 ?        Ss   09:40   0:00 postgres: 16432, wal receiver process   streaming 0/C007518

... continued
```



## Assumptions

* GPDB directories:

  - $HOME/workspace/gpdb4 # greenplum-db/gpdb4/4.3_STABLE
  - $HOME/workspace/gpdb5 # greenplum-db/gpdb/5X_STABLE
  - $HOME/workspace/gpdb # greenplum-db/gpdb/master
  - $HOME/workspace/gpdb-tools # berlin-ab/gpdb-tools/master

