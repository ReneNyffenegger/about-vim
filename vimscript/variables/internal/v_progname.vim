" ..\..\run_ v_progname

redir > v_progname.out

echo 'v:progname = ' . v:progname
" v:progname = gvim

redir END
q
