" ..\run_.bat map
"

redir > map.out

let s:xyz = ['foo', 'bar', 'baz']

let s:res = map(s:xyz, 'toupper(v:val)')

echo s:xyz
" ['FOO', 'BAR', 'BAZ']

echo s:res
" ['FOO', 'BAR', 'BAZ']

fu! Double(n) " {
  return a:n . '-' . a:n
endfu " }

let s:funcRef = function('Double')

call map(s:xyz, string(s:funcRef) . '(v:val)')
" ['FOO-FOO', 'BAR-BAR', 'BAZ-BAZ']

echo s:xyz

redir END
q
