"
" ..\run_.bat submatch
"
redir > submatch.out

let s:txt = 'foo 42 bar'
let s:replaced = substitute(s:txt, '\v(\d)(\d)', '\=submatch(1) + submatch(2)', '')
echo s:replaced

redir END
q
