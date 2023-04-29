set _cg_root = `dirname $1`
alias _cg 'set _d = `tcsh "$_cg_root/g.csh"` && cd $_d'
bindkey -sb "^G" '_cg'
