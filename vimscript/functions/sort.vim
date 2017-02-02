"
"  ..\run_ sort
"

redir > sort.out

let a = ['foo', 'bar', 'baz', 'one', 'two', 'three']

for i in sort(a)

  echo i

endfor


" bar
" baz
" foo
" one
" three
" two


echo ''

" Sort by last name with lambda expressions

if has('lambda')
  let names = ['Donald Duck', 'Rene Nyffenegger', 'Mark Zuckerberg', 'Yolanda Foster']
  for name in sort(names, {n1, n2 -> 1-(matchstr(n1, '\v\s+\zs.*') < matchstr(n2, '\v\s+\zs.*')) * 2 })
     echo name
  endfor
else
  echo 'lambda feature not available'
endif

q
