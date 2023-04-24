#!/usr/bin/env tcsh
if ("`printenv CG_FF`" == "") then
	setenv CG_FF fzy
endif
set _p = `dirname $0`
set _r = `git rev-parse --show-toplevel` && cd "$_r" && set _d = `git ls-tree -rtd --name-only HEAD "$_r" | awk -f "$_p/g.awk" | "$CG_FF"` && echo "$_r/$_d"
