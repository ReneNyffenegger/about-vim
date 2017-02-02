" ../run_ _str_len_width_chars_etc

redir > _str_len_width_chars_etc.out

fu! ShowWidths(string) " {

    echo a:string
    echo '  strchars:        ' . strchars       (a:string)
    echo '  strwidth:        ' . strwidth       (a:string)
    echo '  strlen:          ' . strlen         (a:string)
    echo '  strdisplaywidth: ' . strdisplaywidth(a:string)

    echo ''

endfu " }


call ShowWidths('abc')
" strchars:        3
" strwidth:        3
" strlen:          3
" strdisplaywidth: 3

call ShowWidths('ä')
" strchars:        1
" strwidth:        1
" strlen:          2
" strdisplaywidth: 1

call ShowWidths('せ')
" strchars:        1
" strwidth:        2
" strlen:          3
" strdisplaywidth: 2

call ShowWidths("\t")
" strchars:        1
" strwidth:        1
" strlen:          1
" strdisplaywidth: 8

redir END
q
