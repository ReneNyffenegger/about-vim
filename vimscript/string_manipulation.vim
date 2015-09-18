" run_ string_manipulation

redir > string_manipulation.out

let s:text = '0123456789'

echo s:text[4]
" 4

echo s:text[4:7]
" 4567

echo s:text[7:]
" 789

let s:begin  = 2
let s:length = 4

echo s:text[s:begin : s:length+s:begin-1]
" 2345

redir END

q
