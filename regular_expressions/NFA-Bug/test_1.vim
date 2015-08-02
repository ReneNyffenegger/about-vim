syntax clear
syntax on
syntax case ignore

syntax match   garbage  "[^ \t]"
syntax match   ident    "[a-z][a-z0-9]*"
syntax keyword keyw      foo bar baz

highlight def link garbage   Error
highlight def link ident     Normal
highlight def link keyw      Function
