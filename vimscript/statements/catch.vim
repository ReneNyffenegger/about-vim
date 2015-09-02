" ..\run_ catch


redir > catch.out

fu! ThrowAnError(e) " {
    throw a:e
endfu " }

fu CatchAnError(e) " {

  try
    call ThrowAnError(a:e)
  catch /Foo/
    echo 'Cought Foo: ' . v:exception
  catch /Bar/
    echo 'Cought Bar: ' . v:exception
  catch /./
    echo 'Cought anything: ' . v:exception
  endtry

endfu " }

call CatchAnError('A Foo error')
call CatchAnError('A Bar error')
call CatchAnError('Any error')

redir END
q

" Cought Foo: A Foo error
" Cought Bar: A Bar error
" Cought anything: Any error
