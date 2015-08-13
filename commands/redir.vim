" ..\vimscript\run_.bat redir
"
" See also option verbosefile


" => : redirect into a variable
redir => s:V

version

redir END

" > : redirect into a file
redir > redir.out

echo 's:V ' . s:V

echo '----------------------------'

digraphs

redir END

q
