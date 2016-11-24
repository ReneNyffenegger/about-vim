" ..\run_ string

redir > string.out

let s:list = [       'foo',        'bar',          'baz']
let s:dict = {'one': 'foo', 'two': 'bar', 'three': 'baz'}

function s:Func(p1) " {
  echo (a:p1)
endfu  " }

echo string(s:list)
" ['foo', 'bar', 'baz']

echo string(s:dict)
" {'one': 'foo', 'two': 'bar', 'three': 'baz'}

echo string(function('s:Func'))
" function('<SNR>1_Func')

redir END
q
