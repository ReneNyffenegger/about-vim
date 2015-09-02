" ..\run_ v_exception

language message en

redir > v_exception.out

try

  let A = 'foo'
  let B =  bar

catch /./

  echo 'Caught ' . v:exception
      " Caught Vim(let):E121: Undefined variable: bar

endtry


redir END
q
