"
" ..\run_.bat substitute
"
redir > substitute.out

let s:txt = 'foo BAR baz'

set  noic

let  s:S1 = substitute(s:txt,   'bar', '___', '' )
echo s:S1 
" foo BAR baz

set  ic 

let  s:S2 = substitute(s:txt,   'bar', '___', '' )
echo s:S2
" foo ___ baz

let  s:S3 = substitute(s:txt,   'bar', '___', 'i')
echo s:S3
" foo ___ baz

let  s:S4 = substitute(s:txt, '\Cbar', '___', 'i')
echo s:S4
" foo BAR baz

redir END

q
