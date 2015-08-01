redir > echo.out

echo  20 + 40
echo "foo " . "bar " . " baz"
echo ['one', 'two', 'three']
echo {'abc': 'xyz', 42: 'forty-two'}

q

" 60
" foo bar  baz
" ['one', 'two', 'three']
" {'42': 'forty-two', 'abc': 'xyz'}
