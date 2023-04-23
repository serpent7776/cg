#!/usr/bin/env sh
_p=$(dirname $0)
echo "bind -s ^G '_d=\$(sh \"$_p/g.sh\") && cd \$_d^M'"
