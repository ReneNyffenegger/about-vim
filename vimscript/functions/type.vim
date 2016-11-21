"
" ..\run_ type
"

redir > type.out

echo type(42)
" 0

echo type("foo")
" 1

echo type(function("type"))
" 2

echo type([1, 2, 3])
" 3

echo type({1: 'one', 2: 'two', 3: 'three'})
" 4

echo type(42.42)
" 5

echo type(42 == 42)
" 0

redir END
q
