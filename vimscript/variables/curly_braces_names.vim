"
" ..\run_ curly_braces_names
"

fu! EchoVar(varName) " {

   echo {a:varName}

endfu " }

redir > curly_braces_names.out

let s:var_one   = 'value one'
let g:var_two   = 'value two'
let   var_three = 'value three'

  call EchoVar('s:var_one')
" value one

" call EchoVar(  'var_two')
  call EchoVar('g:var_two')
" value two

  call EchoVar('g:var_three')
" value three

" call EchoVar(  'var_three')

  let s:varSuffix = 'two'
" value two

echo var_{s:varSuffix}

redir END
q
