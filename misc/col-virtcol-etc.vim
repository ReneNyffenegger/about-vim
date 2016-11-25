"
" gvim -i NONE -u NONE --cmd "set guioptions=M" -N -c "winpos 0 0" -c "set lines=40 columns=164" -c "so col-virtcol-etc.vim"
"

silent file c:\temp\out.txt

autocmd InsertEnter  in.txt call InsertEnter ()
autocmd InsertLeave  in.txt call InsertLeave ()
autocmd CursorMoved  in.txt call CursorMoved ()
autocmd CursorMovedI in.txt call CursorMovedI()

vnew
silent file c:\temp\in.txt
" file b

let s:cnt=0
let s:insertMode = 0

fu CursorMoved() " {
    call Log_('CursorMoved')
endfu " }

fu CursorMovedI() " {
    call Log_('CursorMovedI')
endfu " }

fu InsertEnter() " {
   let s:insertMode = 1
   call Log_('InsertEnter')
endfu " }

fu InsertLeave() " {
   let s:insertMode = 0
   call Log_('InsertLeave')
endfu " }

fu Log_(event)

" let l:insertMode = mode() == 'i'
  let l:mode       = mode()

  let l:col      = col    ('.')
  let l:virtcol  = virtcol('.')
  let l:colS     = col    ('$')
  let l:virtcolS = virtcol('$')
  let l:len      = len(getline('.'))

  normal l

  let l:lines = [
      \ printf('%-12s  %3d  %s %d', a:event, s:cnt, l:mode, s:insertMode),
      \'------------'                             ,
      \ printf('col(".")      %3d', l:col         ),
      \ printf('virtcol(".")  %3d', l:virtcol     ),
      \ printf('col("$")      %3d', l:colS        ),
      \ printf('virtcol("$")  %3d', l:virtcolS    ),
      \ printf('len(getline)  %3d', l:len         ),
      \ printf('len(getline)  %3d', l:len         ),
      \''
      \ ]

  call append(0, l:lines)

  normal 1G

  let s:cnt = s:cnt + 1

  normal h

  if ! s:insertMode
" if ! l:insertMode
       return
  endif


  if l:virtcol == l:virtcolS
     startinsert!
  else
     startinsert
  endif

endfu

call Log_('Init')
