"
"  ..\run_ keys
"

redir > keys.out

let h = {}

let h['foo'] =  1
let h['bar'] = 42
let h['baz'] = 99

for k in keys(h)
  echo k
endfor

q

" foo
" baz
" bar
