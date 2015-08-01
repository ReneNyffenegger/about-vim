"
"  ..\run_.bat iterate_over_keys_in_hash

redir > iterate_over_keys_in_hash.out

let h = {}

let h['foo'] = 'one'
let h['bar'] = 'two'
let h['baz'] = 'three'


let k = keys(h)

for i in k

  echo i . ': ' . h[i]

endfor

q

" foo: one
" baz: three
" bar: two
