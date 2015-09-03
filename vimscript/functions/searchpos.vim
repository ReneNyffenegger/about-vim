" ..\run_ searchpos
"
" Create a file, named readfile.txt and write
" three lines:
new 
execute "normal ifoo bar baz\<CR>one two three\<CR>xxx yyy zzz\<ESC>"
write searchpos.txt


redir > searchpos.out

let [s:line, s:col] = searchpos('two')
echo 'Line:   ' . s:line
echo 'Column: ' . s:col
" Line:   2
" Column: 5

redir END

call delete('searchpos.txt')
q
