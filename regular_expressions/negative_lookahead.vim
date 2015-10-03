" ..\vimscript\run_.bat negative_lookahead
"
" A negative lookahead assertion is built with
"
"   ATOM\@! 
"
" or, if using \v, with
"
"   ATOM@!
"

fu! Match_two_not_followed_by_three(text) " {

  let l:matched = match(a:text, '\vtwo(.*three)@!')

  if l:matched == -1
     echo a:text . "  doesn't match a 'two' not followed by a 'three'"
  else
     echo a:text . "  matches       a 'two' not followed by a 'three'"
  endif

endfu " }

redir > negative_lookahead.out

call Match_two_not_followed_by_three('some numbers: one, two, three, four, five')
call Match_two_not_followed_by_three('odd numbers: one, three, five, seven     ')
call Match_two_not_followed_by_three('even numbers: two, four, six, eight      ')


redir END
q

" some numbers: one, two, three, four, five  doesn't match a 'two' not followed by a 'three'
" odd numbers: one, three, five, seven       doesn't match a 'two' not followed by a 'three'
" even numbers: two, four, six, eight        matches       a 'two' not followed by a 'three'
