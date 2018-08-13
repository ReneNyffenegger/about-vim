" ../run_ nr2char
"
redir > nr2char.out

let s:ascii_H           = char2nr('H')
let s:ascii_i           = char2nr('i')
let s:ascii_exclamation = char2nr('!')
let s:ascii_new_line    = 10

echo nr2char(s:ascii_H          ) .
   \ nr2char(s:ascii_i          ) .
   \ nr2char(s:ascii_exclamation) .
   \ nr2char(s:ascii_new_line   )

redir END
q
