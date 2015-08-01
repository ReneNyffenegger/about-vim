"
"  ..\run_ sort
"

redir > sort.out

let a = ['foo', 'bar', 'baz', 'one', 'two', 'three']

for i in sort(a)

  echo i

endfor

q

" bar
" baz
" foo
" one
" three
" two
