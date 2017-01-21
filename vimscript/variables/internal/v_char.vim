"
"  TODO: This example does not work as intended!
"
redir > v_char.out

function TQ84_func(x)
  echo 'TQ84_func: x  = ' . a:x
endfu

iabbr <expr> tq84_abbr TQ84_func(v:char)

normal irene tq84_abbr bar

redir END
q
