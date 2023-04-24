# cg

Quickly switch between directories in git versioned project.

## Usage

- `sh`:

```sh
eval $(sh /full/path/to/activate.sh)
```

- `bash`, `zsh`:

```sh
. /full/path/to/activate.sh
```

- `tcsh`:

```tcsh
source /full/path/to/activate.csh /full/path/to/activate.csh
```

- `fish`:

```fish
. /full/path/to/activate.fish
```

Once activated, press `Ctrl-G` to show directories in fuzzy finder (`fzy` by default).

## Configuration

Environment variables:

- `CG_FF`: Specifies fuzzy finder to be used. `fzy` by default.

## Requirements

- `git`
- `awk`
- `fzy` or any other fuzzy finder
