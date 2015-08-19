" ..\run_ function
"
" see also -> call()

redir > function.out

fu! F_sum(n1, n2) " {
  return a:n1 + a:n2
endfu " }

fu! F_mult(n1, n2) " {
  return a:n1 * a:n2
endfu " }

let FuncRef_1 = function('F_sum' )
let FuncRef_2 = function('F_mult')

echo FuncRef_1(10, 32)
" 42

echo FuncRef_2( 7,  6)
" 42

redir END
q
