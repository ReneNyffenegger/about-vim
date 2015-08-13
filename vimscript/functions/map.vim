" ..\run_.bat map
"

redir > map.out

let s:xyz = ['foo', 'bar', 'baz']

let s:res = map(s:xyz, 'toupper(v:val)')

echo s:xyz
echo s:res

redir END
q
