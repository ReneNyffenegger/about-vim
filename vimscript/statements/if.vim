" ..\run_ if

redir > if.out

if 4==4
   echo '4==4 is obviously true'
else
   echo 'obviously not printed'
endif

if 0
   echo '0 is true'
else
   echo '0 is false'
endif

if ""
   echo '"" is true'
else
   echo '"" is false'
endif

if "0"
   echo '"0" is true'
else
   echo '"0" is false'
endif

redir END

q

" 4==4 is obviously true
" 0 is false
" "" is false
" "0" is false
