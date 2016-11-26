" gvim -i NONE -u NONE -U NONE --cmd "set go=M" -nN -S m.vim

call append(0, [
   \ ' 1 one'    ,
   \ ' 2 two'    ,
   \ ' 3 three'  ,
   \ ' 4 four'   ,
   \ ' 5 five'   ,
   \ ' 6 six'    ,
   \ ' 7 seven'  ,
   \ ' 8 eight'  ,
   \ ' 9 nine'   ,
   \ '10 ten'    ,
   \ '11 eleven' ,
   \ '12 twelve' 
   \ ])

" Move lines 3 through 5 after 7th line
3,5m7

set nomodified
