redir > regex_in_vimscript.out

fu! ContainsNumber(txt  ) " {

    if a:txt =~ '\d'
       echo a:txt . ' does contain at least a number'
    else
       echo a:txt . ' does not contain a number'
    endif

endfu " }

fu! CaseSensitive(txt, yes_no) " {
 
 
   if a:yes_no
      let l:success = a:txt =~# 'BAR'
   else
      let l:success = a:txt =~? 'BAR'
   endif
 
   echo a:txt . ' did' . ( l:success ? '' : ' not' ) . ' match case ' . (a:yes_no ? '' : 'in') . 'sensitively'

endfu " }

call ContainsNumber('foo bar baz'  ) " foo bar baz does not contain a number
call ContainsNumber('foo 42  baz'  ) " foo 42  baz does contain at least a number

call CaseSensitive('foo bar baz', 0) " foo bar baz did match case insensitively
call CaseSensitive('foo bar baz', 1) " foo bar baz did not match case sensitively
call CaseSensitive('peter pan'  , 0) " peter pan did not match case insensitively
call CaseSensitive('peter pan'  , 1) " peter pan did not match case sensitively

q
