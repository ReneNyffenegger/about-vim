" ..\vimscript\run_.bat column_n

redir > column_n.out

"            12345678901
let s:str = 'foo bar baz'

let s:matched = matchstr(s:str, '...\%8c')
echo '>' . s:matched . '<'
" >bar<

redir END
q
