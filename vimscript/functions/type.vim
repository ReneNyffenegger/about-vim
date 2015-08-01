redir > type.out

echo type(42)
echo type("foo")
echo type(function("type"))
echo type([1, 2, 3])
echo type({1: 'one', 2: 'two', 3: 'three'})
echo type(42.42)

q

" 0
" 1
" 2
" 3
" 4
" 5
