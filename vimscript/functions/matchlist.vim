" ..\run_ matchlist

redir > matchlist.out

fu! M(pattern, txt) " {

 let l:ml = matchlist(a:txt, a:pattern)

 echo '  len (l:ml): ' . len(l:ml)

 for i in range(0, len(l:ml)-1)
   echo '    ' . i . ': ' . l:ml[i]
 endfor

 echo ''


endfu " }

call M ('\vfoo(\d+)bar(\d+)baz', 'foobarbaz')
"   len (l:ml): 0

call M ('\vfoo(\d+)bar(\d+)baz', 'foo42bar17baz')
"   len (l:ml): 10
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
"

call M('\v(\d+)?(\S+)', '20abc')
"   len (l:ml): 10
"     0: 20abc
"     1: 20
"     2: abc
"     3: 
"     4: 
"     5: 
"     6: 
"     7: 
"     8: 
"     9: 

call M('\v(\d+)?(\S+)', 'def20')
"  len (l:ml): 10
"    0: def20
"    1: 
"    2: def20
"    3: 
"    4: 
"    5: 
"    6: 
"    7: 
"    8: 
"    9: 

redir END
q
