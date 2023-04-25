_cg() {
	local _d=$("$_sh" "$_p/g.sh") && cd "$_d"
}

if [ -n "`echo $ZSH_VERSION`" ]; then
	_cg_zsh() {
		_cg  && zle reset-prompt
	}
	_sh=zsh
	_p="$(dirname $0)"
	zle -N _cg_zsh
	bindkey '^G' _cg_zsh
elif [ -n "`echo $BASH_VERSINFO`" ]; then
	_sh="$BASH"
	_p="$(dirname ${BASH_SOURCE[0]})"
	bind '"\C-G": "_cg\n"'
else
	# Assuming bourne shell
	_p=$(dirname $0)
	echo "bind -s ^G '_d=\$(sh \"$_p/g.sh\") && cd \$_d^M'"
fi
