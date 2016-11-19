"
"  ..\run_ v_variables
"

redir > v_variables.out

for v in sort(keys(v:))

  let s:type = type(eval('v:' . v))

  if s:type  == 0 || s:type  == 1

     echo printf('%-30s: %s', 'v:' . v, eval('v:' . v))

  elseif s:type == 3

     echo printf('%-30s  * Is a list', 'v:' . v)

  else

    echo printf('%-30s: type: %s', 'v:' . v, s:type)

  endif

endfor

redir END

q
