#!/usr/bin/env tcsh
set _p = `dirname $1`
bindkey -sb "^G" 'set _d = `tcsh "$_p/g.csh"` && cd $_d^M'
