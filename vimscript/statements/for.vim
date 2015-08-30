" ..\run_ for

redir > for.out

let s:abc = ['foo', 'bar', 'baz']

" A for .. in construct does not alias the variable to
" an element in an array (like Perl does)

for s:i in s:abc
  let s:i = toupper(s:i)
endfor

echo s:abc
" ['foo', 'bar', 'baz']

redir END
q
