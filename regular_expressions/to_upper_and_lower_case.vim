" ..\vimscript\run_.bat to_upper_and_lower_case

redir > to_upper_and_lower_case.out

let s:str = 'foo    bar  baz'

" \U: make uppercase until \E
echo substitute(s:str, '\(\s\+\)\(\w\+\)\(\s\+\)', '\1\U\2\E\3', '')
" foo    BAR  baz

" \u: make one letter uppercase
echo substitute(s:str, '\(\s\+\)\(\w\+\)\(\s\+\)', '\1\u\2\3', '')
" foo    Bar  baz

let s:str = 'FOO    BAR  BAZ'

" \L: make lowercase until \E
echo substitute(s:str, '\(\s\+\)\(\w\+\)\(\s\+\)', '\1\L\2\E\3', '')
" FOO    bar  BAZ

" \l: make one letter lowercase
echo substitute(s:str, '\(\s\+\)\(\w\+\)\(\s\+\)', '\1\l\2\3', '')
" FOO    bAR  BAZ

redir END
q
