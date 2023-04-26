set _p (status dirname)

function _cg
	set _d ("$_p/g.fish") && cd "$_d" && fish_prompt
end

bind \cg '_cg'
bind --mode insert \cg '_cg'
bind --mode normal \cg '_cg'
