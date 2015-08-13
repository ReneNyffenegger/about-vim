" ..\run_.bat map
"

redir > map.out

let s:xyz = ['foo', 'bar', 'baz']

let s:res = map(s:xyz, 'toupper(v:val)')

echo s:xyz
" ['FOO', 'BAR', 'BAZ']

echo s:res
" ['FOO', 'BAR', 'BAZ']

redir END
q
