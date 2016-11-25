" ..\vimscript\run_.bat negative_lookbehind
"
" A negative lookbehind assertion is built with
"
"   ATOM\@<! 
"
" or, if using \v, with
"
"   ATOM@<!

fu! Match_baz_not_preceeded_by_foo(text) " {

  let l:matched = match(a:text, '\v(foo.*)@<!baz')

  if l:matched == -1
     echo a:text . "  doesn't match a 'baz' not preceeded by a 'foo'"
  else
     echo a:text . "  matches       a 'baz' not preceeded by a 'foo'"
  endif

endfu " }

redir > negative_lookbehind.out

call Match_baz_not_preceeded_by_foo('a foo, a bar and a baz went to a theatre')
call Match_baz_not_preceeded_by_foo('a qux, a bar and a baz went to a theatre')
call Match_baz_not_preceeded_by_foo('baz')
call Match_baz_not_preceeded_by_foo('foobaz')

redir END
q

" a foo, a bar and a baz went to a theatre  doesn't match a 'baz' not preceeded by a 'foo'
" a qux, a bar and a baz went to a theatre  matches       a 'baz' not preceeded by a 'foo'
" baz  matches       a 'baz' not preceeded by a 'foo'
" foobaz  doesn't match a 'baz' not preceeded by a 'foo'
