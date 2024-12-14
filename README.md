# myjoin

## Testing the project

There are two bash-scripts in the project root that you can use to test the
program, one for a small data-set, another for a large data-set:

```sh
.
├── ...
├── test_large
└── test_small
```

By default, the scripts try to read from files at the location `/localtmp/efficient24`.
You can optionally change this location by setting the environment variable `DATA_DIR`:

```sh
# Locates the data files at the absolute path `/localtmp/efficient24`.
./test_small

# Locates the data files at the relative path `./data`.
DATA_DIR=./data ./test_large
```

## Checking performance optimizations

There's another bash-script in the project root that you can use to test the
program's performance:

```sh
./performance

DATA_DIR=./data ./performance
```

NOTE: The command used to measure the performance of the program can measure
various event types, these can be tweaked in the script as well!
