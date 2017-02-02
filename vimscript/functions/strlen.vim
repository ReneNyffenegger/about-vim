"
"  ..\run_ strlen
"

redir > strlen.out

echo strlen("1234567890")
" 10

"
"    strlen returns the number of bytes in a string,
"    not the length of the string in characters:
"
echo strlen("äöü")
" 6

"
"    Use strchars to get the number 
"    characters:
"
echo strchars("äöü")
" 3

q
