# cppforge

C++ utility for handling building (Using CMake), running, synchronizing
and memory leak checking (Using valgrind)

Lets the user initialize, build, synchronize and run C++ projects using CMake.

## Usage

### Initialization

```bash
cminit init NAME
```

- Initializes a project named NAME at the current working directory.
  - Creates:
    - a directory named `NAME`
    - the main driver `NAME/main.cpp`
    - the CMake file at `NAME/CMakeLists.txt`
    - `NAME/.source_files` for tracking source files (Used for `sync`)

### Build

```bash
cminit build
```

- Builds the project at the current working directory using `cmake --build build`

### Run

```bash
cminit run
```

- Builds and runs the project

### Sync

```bash
cminit sync
```

- Checks the `.source_files` file and the `src/` directory, compares the changes
and re-writes `target_sources` field in `CMakeLists.txt`

### Memcheck

```bash
cminit memcheck
```

- Runs valgrind with
`valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./build/main`

## Installation

Simply run

```bash
make install
```
