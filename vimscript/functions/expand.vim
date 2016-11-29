" ..\run_ expand
"

fu ShowExpand(expr) " {
  "echo printf('%-15s: %s', a:expr, expand(a:expr))
   echo a:expr
   echo repeat('-', strlen(a:expr))
   let  l:expanded = split(expand(a:expr), "\n")

   echo join(map(l:expanded, '"    " . v:val'), "\n")

   echo ""
endfu

redir > expand.out

call ShowExpand('<sfile>')
call ShowExpand('<sfile>')
call ShowExpand('*ri*')
call ShowExpand('../**/*ri*')

redir END
q
