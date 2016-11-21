" ..\run_ globpath

redir > globpath.out

let s:dirs = '../arrays-and-hashes,../functions,../statements, ../variables'

for s:file in split(globpath(s:dirs, '*b*.vim'), "\n")
  echo ('- '. s:file)
endfor

echo '---------------'

for s:file in split(globpath('../**', '*b*.vim'), "\n")
  echo ('- '. s:file)
endfor

redir END
q
