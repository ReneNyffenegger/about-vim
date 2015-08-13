" ..\run_.bat split
"

redir > split.out

let s:V = '0foo42bar13baz88'

let s:A = split(s:V, '\v\d+')

for i in s:A
  echo 'i = ' . i
endfor
" i = foo
" i = bar
" i = baz

echo '--------------------------------'

let s:dir_output = system('dir')

let s:dir = split(s:dir_output, "\n")

echo 'len(s:dir) = ' . len(s:dir)

echo

for f in s:dir
  if f =~? '^\d' && f !~? '<DIR>'
    echo 'f = ' .f
  endif
endfor

q
