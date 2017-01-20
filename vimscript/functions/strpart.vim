redir > strpart.out

echo strpart('0123456789',  3, 4)
" 3456

echo strpart('0123456789',  0, 2)
" 01

echo strpart('0123456789',  7   )
" 789

echo strpart('0123456789', -3, 5)
" 01

echo strpart('0123456789',  0, 4)
" 0123

echo strpart('0123456789',  1, 4)
" 1234

redir END

q
