#!/usr/bin/env fish
set _p (status dirname)
set _r (git rev-parse --show-toplevel) && cd "$_r" && set _d (git ls-tree -rtd --name-only HEAD "$_r" | awk -f "$_p/g.awk" | fzy) && echo "$_r/$_d"
