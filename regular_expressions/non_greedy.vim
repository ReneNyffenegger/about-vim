" ../vimscript/run_ non_greedy

redir > non_greedy.out

let s:text = 'The #foo# and the #bar# and the #baz# and others, too'

" greedy matching

let  s:greedy_match = matchstr(s:text, '#.*#')
echo s:greedy_match
"
"  #foo# and the #bar# and the #baz#
"

let  s:non_greedy_match = matchstr(s:text, '#.\{-}#')
echo s:non_greedy_match
"
"  #foo#
"

let  s:non_greedy_match_magic = matchstr(s:text, '\v#.{-}#')
echo s:non_greedy_match_magic
"
"  #foo#
"

redir END
q
