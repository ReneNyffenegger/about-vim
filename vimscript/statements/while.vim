" ..\run_ while

redir > while.out

let s:i=5
while s:i
  echo s:i
  let s:i -= 1
endwhile
" 5
" 4
" 3
" 2
" 1

redir END
q
