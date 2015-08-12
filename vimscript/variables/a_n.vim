"
"  ..\run_ a_n
"

redir > a_n.out

fu SomeFunc(...)

   echo a:1
   echo a:2
   echo a:3

   echo ''

   echo a:000[0]
   echo a:000[1]
   echo a:000[2]

   echo ''

   echo 'Number of arguments: ' . a:0

endfu


call SomeFunc('foo', 'bar', 'baz')

redir END

q

" foo
" bar
" baz
" 
" foo
" bar
" baz
" 
" Number of arguments: 3
