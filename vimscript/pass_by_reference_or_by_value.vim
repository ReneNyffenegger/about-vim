"
"  run_ arrays_by_reference_or_by_value
"
"  See also arrays-and-hashes/arrays_by_reference_or_by_value.vim

redir > pass_by_reference_or_by_value.out

fu F1(p)
  let a:p = a:p * 2
endfu

fu F2(p)
   let a:p = a:p . '-abc'
endfu

fu F3(p)
   call add(a:p, 'baz')
   let a:p[0] = 'bar'
endfu

let n = 21
" Error «E46» in function (a:p is readonly)
" call F1(n)
echo n
" 21

let s = 'foo'
" same error as above
" call F2(s)
echo s
" foo

let a = ['abc', 'bar']
call F3(a)
echo a
" ['foo', 'bar', 'baz']

q
