" ..\run_ fnamemodify
"

redir > fnamemodify.out

let s:path = 'c:\foo\bar\baz.txt'

echo fnamemodify(s:path, ':h')
" c:\foo\bar

echo fnamemodify(s:path, ':t')
" baz.txt

echo fnamemodify(s:path, ':r')
" c:\foo\bar\baz

echo fnamemodify(s:path, ':t:r')
" baz

echo fnamemodify('/no/drive/letter.txt', ':p')
" C:\no\drive\letter.txt

redir END

q
