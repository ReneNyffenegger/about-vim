" ..\run_ v_shell_error
"
redir > v_shell_error.out

call system('command-with-error')
echo v:shell_error

redir END
q
