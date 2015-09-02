" ..\run_ readfile


" Create a file, named readfile.txt and write
" three lines: foo, bar and baz:
new 
execute "normal ifoo\<CR>bar\<CR>baz\<ESC>"
write readfile.txt


redir > readfile.out
" Read the created file and echo it
let s:lines = readfile('readfile.txt')
for s:line in s:lines
  echo s:line
endfor

redir END

call delete('readfile.txt')
q
