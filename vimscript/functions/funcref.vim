" ..\run_ funcref

" see also -> function()

redir > funcref.out

fu! FuncTQ84()
    return 'first implementation'
endfu

let Function_1 = function('FuncTQ84')
let Funcref__1 = funcref ('FuncTQ84')


fu! FuncTQ84()
    return 'second implementation'
endfu

let Function_2 = function('FuncTQ84')
let Funcref__2 = funcref ('FuncTQ84')

echo call(Function_1, [])
" second implementation

echo call(Funcref__1, [])
" first implementation

echo call(Function_2, [])
" second implementation

echo call(Funcref__2, [])
" second implementation

redir END
q
