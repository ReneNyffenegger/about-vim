"
"  ..\run_ a_000
"

redir > a_000.out

fu ThreeArgs(one, two, three, ...)

   " a:000 is an array («List»), it will print 3
   echo type(a:000)
   echo len(a:000)

endfu

call ThreeArgs('foo', 'bar', 'baz')
" 3
" 0

call ThreeArgs('foo', 'bar', 'baz', 'opt 1', 'opt 2')
" 3
" 2

redir END

q
