" ..\run_ call

redir > call.out

fu! Func(n1, n2) " {
  return a:n1 * a:n2
endfu " }

let s:FuncRec = function('Func' )


let s:args = [7, 6]
echo call(s:FuncRec, s:args)
" 42

echo s:FuncRec(3, 4)
" 12

redir END
q
