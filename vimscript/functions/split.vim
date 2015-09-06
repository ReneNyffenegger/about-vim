" ..\run_.bat split
"

redir > split.out

" { Splitting with default pattern

let s:text = "  foo   bar\t\n  baz\n"
for word in split(s:text)
  echo 'word = ' . word
endfor
" word = foo
" word = bar
" word = baz

" }
" { Splitting with a pattern
let s:V = '0foo42bar13baz88'

let s:A = split(s:V, '\v\d+')

for i in s:A
  echo 'i = ' . i
endfor
" i = foo
" i = bar
" i = baz

" }
" { Splitting on newlines
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

" }

q
