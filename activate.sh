_cg() {
	local _d=$("$_cg_sh" "$_cg_root/g.sh") && cd "$_d"
}

if [ -n "`echo $ZSH_VERSION`" ]; then
	_cg_zsh() {
		_cg  && zle reset-prompt
	}
	_cg_sh="$ZSH_ARGZERO"
	_cg_root="$(dirname $0)"
	zle -N _cg_zsh
	bindkey '^G' _cg_zsh
elif [ -n "`echo $BASH_VERSINFO`" ]; then
	_cg_sh="$BASH"
	_cg_root="$(dirname ${BASH_SOURCE[0]})"
	bind '"\C-G": "_cg\n"'
else
	# Assuming bourne shell
	_cg_root=$(dirname $0)
	echo "bind -s ^G '_d=\$(sh \"$_cg_root/g.sh\") && cd \$_d^M'"
fi
