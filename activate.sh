_p=$(dirname $0)
if [ -n "`echo $ZSH_VERSION`"  ]; then
	echo "bindkey -s '^G' '_d=\$(sh \"$_p/g.sh\") && cd \$_d^M'"
elif [ -n "`echo $BASH_VERSINFO`"  ]; then
	echo "bind '\"\C-G\": \". $_p/cg.sh $_p\n\"'"
else
	# Assuming bourne shell
	echo "bind -s ^G '_d=\$(sh \"$_p/g.sh\") && cd \$_d^M'"
fi
