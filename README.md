# GPDB Tools

- A collection of bash scripts, variables, and aliases to aid in GPDB development.
- Editor configurations:
   * emacs
   * (hopefully more soon)

## Installation

`source /path/to/greenplum-tools/setup.bash`


## Aliases

```
$ 7
Switching to gpdb: ~/workspace/gpdb7
```

```
$ 6
Switching to gpdb: ~/workspace/gpdb6
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
Switching to greenplum-tools: ~/workspace/greenplum-tools
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
  - $HOME/workspace/gpdb6 # greenplum-db/gpdb/6X_STABLE
  - $HOME/workspace/gpdb7 # greenplum-db/gpdb/master
  - $HOME/workspace/greenplum-tools # berlin-ab/greenplum-tools/master

