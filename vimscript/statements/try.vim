" ..\run_ try

language messages en

redir > try.out

let s:a = ['foo', 'bar', 'baz']


fu AccessNthElement(n)

  try
  
    let l:nth = s:a[a:n]
    echo "Could access element " . a:n . ". It is " . l:nth
  
  catch /.*/
    echo "Caught error: " . v:exception
  finally
    echo "Now executing finally block"
    echo "----"
  endtry

endfu


call AccessNthElement(2)
call AccessNthElement(4)

redir END
q

" Could access element 2. It is baz
" Now executing finally block
" ----
" Caught error: Vim(let):E684: list index out of range: 4
" Now executing finally block
" ----
