" ..\run_.bat matchstr
"
redir > matchstr.out

let s:start = 0

for s:pos in range(0, 3)
    echo s:pos . ': ' . matchstr("There are 42 foos, 89 bars and no baz's", '\v<\d+ \w+', 0, s:pos)
endfor
" 0: 42 foos
" 1: 42 foos
" 2: 89 bars
" 3:

redir END
q
