" ..\run_ matchlist

redir > matchlist.out

fu! M(txt) " {

 let l:ret = matchlist(a:txt, '\vfoo(\d+)bar(\d+)baz')

 echo a:txt
 echo '  len (ret): ' . len(l:ret)

 for i in range(0, len(l:ret)-1)
   echo '    ' . i . ': ' . ret[i]
 endfor

 echo ''

endfu " }

call M ('foobarbaz')
call M ('foo42bar17baz')

redir END
q

" foobarbaz
"   len (ret): 0
" 
" foo42bar17baz
"   len (ret): 10
"     0: foo42bar17baz
"     1: 42
"     2: 17
"     3:
"     4:
"     5:
"     6:
"     7:
"     8:
"     9:
