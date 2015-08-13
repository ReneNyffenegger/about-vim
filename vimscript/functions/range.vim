" ..\run_ range
"

redir > range.out

for i in range(5, 10)
  echo 'i = ' . i
endfor
" i = 5
" i = 6
" i = 7
" i = 8
" i = 9
" i = 10
"
echo '- - - - - - -'

for j in range(4)
  echo 'j = ' . j
endfor
" j = 0
" j = 1
" j = 2
" j = 3

redir END

q

