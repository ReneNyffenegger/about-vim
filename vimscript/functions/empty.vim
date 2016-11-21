" ..\run_ empty

redir > empty.out

fu IsEmpty(thing)
   if empty(a:thing)
      echo '    empty'
    else
      echo 'not empty'
    endif
endfu

let s:dict = {}
let s:list = []

call IsEmpty(s:dict) "     empty
call IsEmpty(s:list) "     empty

let s:dict['foo'] = 42
call IsEmpty(s:dict) " not empty

call add(s:list, 42)
call IsEmpty(s:list) " not empty

let s:num = 0
call IsEmpty(s:num)  "     empty

let s:num = 1
call IsEmpty(s:num)  " not empty

let s:flt = 0
call IsEmpty(s:flt)  "     empty

let s:flt = 0.01
call IsEmpty(s:flt)  " not empty

let s:str = ''
call IsEmpty(s:str)  "     empty

let s:str = 'foo'
call IsEmpty(s:str)  " not empty

let s:val = v:null
call IsEmpty(s:val)  "     empty

let s:val = v:none
call IsEmpty(s:val)  "     empty

let s:val = v:false
call IsEmpty(s:val)  "     empty

let s:val = v:true
call IsEmpty(s:val)  " not empty

redir END
q
