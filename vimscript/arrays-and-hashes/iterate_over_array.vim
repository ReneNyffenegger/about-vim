"
"  ..\run_ iterate_over_array

redir > iterate_over_array.out

let a = ['foo', 'bar', 'baz']

for i in a

  echo i

endfor

q

" foo
" bar
" baz
