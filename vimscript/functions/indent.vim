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
