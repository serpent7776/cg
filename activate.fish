#!/usr/bin/env fish
set _p (status dirname)
bind \cg 'set _d ("$_p/g.fish") && cd "$_d" && fish_prompt'
