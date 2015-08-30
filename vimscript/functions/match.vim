" ..\run_ match

redir > match.out

" Matching a string {

"             0         1
"             01234567890123456
let s:expr = 'foo 2 bar 42 baz'

echo match(s:expr, '\d')
" 4

echo match(s:expr, '\d', 4)
" 4

echo match(s:expr, '\d', 5)
" 10

echo match(s:expr, '\d\d')
" 10

echo match(s:expr, '\d\d\d')
" -1

echo match(s:expr, '^')
" 0

echo match(s:expr, '$')
" 16

" }
" Matching a list {

let s:a = ['xyz', 'foo42bar', 'baz193bla']

echo match(s:a, '\d\d')
" 1

echo match(s:a, '\d\d\d')
" 2

" }

redir END
q
