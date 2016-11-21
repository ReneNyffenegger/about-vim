" ..\run_ for-break

redir > for-break.out

let s:nums = range(1, 10)

for s:n in s:nums
    echo s:n
    if s:n == 4
       break
    endif
endfor

redir END
q

" 1
" 2
" 3
" 4
