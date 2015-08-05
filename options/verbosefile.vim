" ..\vimscript\run_.bat verbosefile

redir > verbosefile.out

echo "First line"
echo "Second line"
echo "Currently, verbosefile is " . &verbosefile

" Messages now go to c:\temp\verbose.txt
set verbosefile=c:\temp\verbose.txt

echo "Print more"
echo "and some more"

" Stop sending messages to c:\temp\verbose.txt:
set verbosefile=

echo "Sixth line"
echo "Seventh line"

redir END

q

" First line
" Second line
" Currently, verbosefile is
" Print more
" and some more
" Sixth line
" Seventh line
