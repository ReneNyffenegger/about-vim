" ..\run_.bat system
"
"
" Use -> executable() to determine if a command
" can be executed with system.

redir > system.out

let s:dir = system('dir /b')

echo s:dir

echo 'v:shell_error = ' . v:shell_error

let s:foo = system('inexisting-command')
echo 'v:shell_error = ' . v:shell_error

q
