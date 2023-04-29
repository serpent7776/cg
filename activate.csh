set _cg_root = `dirname $1`
bindkey -sb "^G" 'set _d = `tcsh "$_cg_root/g.csh"` && cd $_d^M'
