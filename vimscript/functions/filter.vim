" ..\run_ filter

redir > filter.out

let s:list = [ 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten' ]

let s:word_with_n = filter(s:list, 'v:val =~ "n"')

echo join(s:word_with_n, "\n")
" one
" seven
" nine
" ten

" s:list is also modified...
echo join(s:list, "\n")
" one
" seven
" nine
" ten

redir END
q
