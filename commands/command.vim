" ..\vimscript\run_.bat command
"
redir > command.out

fu TQ84Func_0() " {
   echo 'TQ84Func_0 called'
endfu " }

fu TQ84Func_1(arg) " {
   echo 'TQ84Func_1 called, type(arg)=' . type(a:arg) . ', arg=' . a:arg
endfu " }

fu TQ84Func_n(...) " {

   echo 'TQ84Func_n called'
   for i in a:000
     echo '  ' . i
   endfor
  
endfu " }

fu TQ84Complete(ArgLead, CmdLine, CursorPos) " {
   return [ 'ArgLead:'.a:ArgLead , 'CmdLine:'.a:CmdLine , 'CursorPos:'.a:CursorPos ]
endfu " }

command -nargs=0                                   TQ84cmdNargs0       :call TQ84Func_0()
command -nargs=1                                   TQ84cmdNargs1Args   :call TQ84Func_1(  <args>)
command -nargs=1                                   TQ84cmdNargs1qArgs  :call TQ84Func_1(<q-args>)
command -nargs=*                                   TQ84cmdNargsqN      :call TQ84Func_n(<q-args>)
command -nargs=*                                   TQ84cmdNargsfN      :call TQ84Func_n(<f-args>)
command -nargs=* -complete=customlist,TQ84Complete TQ84cmdComplete     :call TQ84Func_1(<q-args>)


TQ84cmdNargs0
" TQ84Func_0 called

let s:num=42
let s:str='foo'

TQ84cmdNargs1Args  s:num
" TQ84Func_1 called, type(arg)=0, arg=42

TQ84cmdNargs1qArgs s:num
" TQ84Func_1 called, type(arg)=1, arg=s:num

TQ84cmdNargs1Args  s:str
" TQ84Func_1 called, type(arg)=1, arg=foo

TQ84cmdNargs1qArgs s:str
" TQ84Func_1 called, type(arg)=1, arg=s:str

TQ84cmdNargsqN one two s:str three
" TQ84Func_n called
"   one two s:str three

TQ84cmdNargsfN foo bar s:str baz
" TQ84Func_n called
"   foo
"   bar
"   s:str
"   baz


" TODO How can TQ84cmdComplete be automated

redir END
q
