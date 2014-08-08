redir > regex_in_vimscript.out

fu! ContainsNumber(txt) 

    if a:txt =~ '\d'
       echo a:txt . ' does contain at least a number'
    else
       echo a:txt . ' does not contain a number'
    endif

endfu

call ContainsNumber('foo bar baz') " foo bar baz does not contain a number
call ContainsNumber('foo 42  baz') " foo 42  baz does contain at least a number

q
