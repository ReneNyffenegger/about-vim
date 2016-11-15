" ..\run_ keys_value_if_exists_default_otherwise
redir > keys_value_if_exists_default_otherwise.out

let s:someDict = {'foo': 'val one', 'bar': 'val two'}

echo get(s:someDict, 'foo', 'default')
echo get(s:someDict, 'bar', 'default')
echo get(s:someDict, 'baz', 'default')

redir END
q

" val one
" val two
" default
