" ..\run_ indent

redir > indent.out

  r indent.vim

" Find line number of 'last' line
  let s:lineTo = search('^q\s*$')

  " Next line contains spaces!
         

  for s:line in range(1, s:lineTo)
      echo printf('%2d %2d | %-40s', s:line, indent(s:line), getline(s:line) . '|')
  endfor

redir END
q

"  1  0 | " ..\run_ indent|
"  2  0 | |
"  3  0 | redir > indent.out|
"  4  0 | |
"  5  2 |   r indent.vim|
"  6  0 | |
"  7  0 | " Find line number of 'last' line|
"  8  2 |   let s:lineTo = search('^q\s*$')|
"  9  0 | |
" 10  2 |   " Next line contains spaces!|
" 11  9 |          |
" 12  0 | |
" 13  2 |   for s:line in range(1, s:lineTo)|
" 14  6 |       echo printf('%2d %2d | %-40s', s:line, indent(s:line), getline(s:line) . '|')|
" 15  2 |   endfor|
" 16  0 | |
" 17  0 | redir END|
" 18  0 | q|
