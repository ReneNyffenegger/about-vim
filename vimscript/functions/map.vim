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

"
"  Using lambda expressions
"
if has('lambda')
   call map(s:xyz, {pos,val -> pos . ': ' . tolower(val)})
   echo s:xyz
 " ['0: foo-foo', '1: bar-bar', '2: baz-baz']
else
   echo 'feature lambda not available'
endif

redir END
q
