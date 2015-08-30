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
"
" Using -> call() {

let s:args = [10, 15]
echo call(FuncRef_1, s:args)
" 25

" }

" Special case: define a function and assign a funcref to a dictionary entry {

let SomeHash = {'ix-1': 'one', 'ix-2': 'two'}

fu SomeHash.funcName(arg) dict
   return 2*a:arg
endfu

echo join(keys(SomeHash), ' / ')
" ix-2 / funcName / ix-1

echo SomeHash['funcName'](21)
" 42

" }

redir END
q
