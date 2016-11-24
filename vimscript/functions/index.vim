" ..\run_ index

redir > index.out

let s:L = ['zero', 'one', 'two', 'three', 'four', 'foo', 'bar', 'baz', 'foo', 'bar', 'baz']
echo index(s:L, 'three')
" 3

echo index(s:L, 'foo')
" 5

echo index(s:L, 'foo', 5)
" 5

echo index(s:L, 'foo', 6)
" 8

echo index(s:L, 'foo', 9)
" -1

echo index(s:L, 'TWO', 0)
" -1

echo index(s:L, 'TWO', 0, 1) " Ignore case
" 2

redir END
q
