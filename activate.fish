set _cg_root (status dirname)

function _cg
	set _d ("$_cg_root/g.fish") && cd "$_d" && fish_prompt
end

bind \cg '_cg'
bind --mode insert \cg '_cg'
bind --mode normal \cg '_cg'
