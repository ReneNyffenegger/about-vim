" ..\run_ if

redir > if.out

if 4==4
   echo '4==4 is obviously true'
else
   echo 'obviously not printed'
endif
" 4==4 is obviously true

if 0
   echo '0 is true'
else
   echo '0 is false'
endif
" 0 is false

if 1
   echo '1 is true'
else
   echo '1 is false'
endif
" 1 is true

" Boolean expressions with a string:
" The string is first converted into a number.
" If the number is not zero, it is true.
" 
" For example "foo" is converted to 0, 0 is false

if ""
   echo '"" is true'
else
   echo '"" is false'
endif
" "" is false

if "0"
   echo '"0" is true'
else
   echo '"0" is false'
endif
" "0" is false

if "1"
   echo '"1" is true'
else
   echo '"1" is false'
endif
" "1" is true

if "foo"
   echo '"foo" is true'
else
   echo '"foo" is false'
endif
" "foo" is false

if "000foo"
   echo '"000foo" is true'
else
   echo '"000foo" is false'
endif
" "000foo" is false

if "009foo"
   echo '"009foo" is true'
else
   echo '"009foo" is false'
endif
" "009foo" is true

redir END

q
