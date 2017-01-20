redir > strpart.out

echo strpart('0123456789',  3, 4)
echo strpart('0123456789',  0, 2)
echo strpart('0123456789',  7   )
echo strpart('0123456789', -3, 5)
echo strpart('0123456789',  0, 4)
echo strpart('0123456789',  1, 4)

q

" 3456
" 01
" 789
" 01
" 0123
" 1234
