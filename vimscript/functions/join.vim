" ..\run_ join

redir > join.out

let s:abc = ['foo', 'bar', 'baz']

echo join(s:abc, ' - ')
" foo - bar - baz


redir END
q
