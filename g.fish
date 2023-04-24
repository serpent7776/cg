#!/usr/bin/env fish
if [ -z "$CG_FF" ]
	set -gx CG_FF fzy
end
set _p (status dirname)
set _r (git rev-parse --show-toplevel) && cd "$_r" && set _d (git ls-tree -rtd --name-only HEAD "$_r" | awk -f "$_p/g.awk" | $CG_FF) && echo "$_r/$_d"
