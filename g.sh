_p=`dirname $0`
_r=$(git rev-parse --show-toplevel) && cd "$_r" && _d=$(git ls-tree -rtd --name-only HEAD "$_r" | awk -f "$_p/g.awk" | ${CG_FF:-fzy}) && echo "$_r/$_d"
