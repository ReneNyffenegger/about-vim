"
"  ..\run_ create_array

redir > create_array.out

let a = ['foo', 'bar', 'baz']

echo a[0]
echo a[1]
echo a[2]

q

" foo
" bar
" baz
