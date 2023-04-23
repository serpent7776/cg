#!/usr/bin/env tcsh
set _p = `dirname $0`
set _r = `git rev-parse --show-toplevel` && cd "$_r" && set _d = `git ls-tree -rtd --name-only HEAD "$_r" | awk -f "$_p/g.awk" | fzy` && echo "$_r/$_d"
