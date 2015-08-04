"
"  run_.bat regular_expressions
"

fu! ContainsNumber(txt  ) " {

    if a:txt =~ '\d'
       echo a:txt . ' does contain at least a number'
    else
       echo a:txt . ' does not contain a number'
    endif

endfu " }

fu! CaseSensitive(txt, yes_no) " {
 
 
   if a:yes_no
    " Try to mach case sensitively:
      let l:success = a:txt =~# 'BAR'
   else
    " Try to match case insensitivly:
      let l:success = a:txt =~? 'BAR'
   endif
 
   echo a:txt . ' did' . ( l:success ? '' : ' not' ) . ' match case ' . (a:yes_no ? '' : 'in') . 'sensitively'

endfu " }

redir > regular_expressions.out

call ContainsNumber('foo bar baz'  ) " foo bar baz does not contain a number
call ContainsNumber('foo 42  baz'  ) " foo 42  baz does contain at least a number

call CaseSensitive('foo bar baz', 0) " foo bar baz did match case insensitively
call CaseSensitive('foo bar baz', 1) " foo bar baz did not match case sensitively
call CaseSensitive('peter pan'  , 0) " peter pan did not match case insensitively
call CaseSensitive('peter pan'  , 1) " peter pan did not match case sensitively

q

" foo bar baz does not contain a number
" foo 42  baz does contain at least a number
" foo bar baz did match case insensitively
" foo bar baz did not match case sensitively
" peter pan did not match case insensitively
" peter pan did not match case sensitively
