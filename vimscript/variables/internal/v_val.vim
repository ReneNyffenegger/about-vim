" ..\..\..\run_ v_val

redir > v_val.out

let s:list = [ 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten' ]

call filter(s:list, 'v:val =~ "n"')

echo join(s:list, "\n")
" one
" seven
" nine
" ten

redir END
q
