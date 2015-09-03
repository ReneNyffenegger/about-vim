" ..\run_ get

redir > get.out

let s:abc = ['foo', 'bar', 'baz']

for i in range (0, 3)
  echo i . ': ' . get(s:abc, i)
endfor
" 0: foo
" 1: bar
" 2: baz
" 3: 0

echo ' '
echo "With default argument"
echo ' '

for i in range (0, 3)
  echo i . ': ' . get(s:abc, i, 'def')
endfor
" 0: foo
" 1: bar
" 2: baz
" 3: def


" get to access values of variables whose name is
" stored in another variable

let g:SomeVar    = 'One'
let g:AnotherVar = 'Two'

let s:VarName = 'SomeVar'
echo get(g:, s:VarName)
" One

let s:VarName = 'AnotherVar'
echo get(g:, s:VarName)
" Two

redir END
q
