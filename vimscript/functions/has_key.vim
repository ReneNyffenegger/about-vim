" ..\run_ has_key
"

redir > has_key.out

let s:h = {}

let s:h['foo'] = 'one'
let s:h['bar'] = 'two'

fu Print_val_for_key(k) " {

   if has_key(s:h, a:k)
      echo 'Value for ' . a:k . ' is ' . s:h[a:k]
   else
      echo 'No value for ' . a:k
   endif
  
endfu " }

call Print_val_for_key('foo')
call Print_val_for_key('bar')
call Print_val_for_key('baz')

redir END

q

" Value for foo is one
" Value for bar is two
" No value for baz
