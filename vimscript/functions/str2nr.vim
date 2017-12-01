" ../run_ str2nr

redir > str2nr.out

" 11001 binary is: 25
echo str2nr('11001', 2)

" 111 octal is: 73 = 8*8 + 8 + 1
echo str2nr('111', 8)

" ff hexadecimal is: 255
echo str2nr('ff', 16)

" Using base 16 ignores leading 0x,
" the following prints 127
echo str2nr('0x7f', 16)

redir END
q
