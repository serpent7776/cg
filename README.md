# cg

Quickly switch between directories in git versioned project.

## Usage

- `sh`:

```sh
eval $(sh /full/path/to/activate.sh)
```

- `tcsh`:

```tcsh
source /full/path/to/activate.csh /full/path/to/activate.csh
```

- `fish`:

```fish
. /full/path/to/activate.fish
```

Once activated, press `Ctrl-G` to show directories in `fzy` finder.

## Requirements

- `git`
- `awk`
- `fzy`
