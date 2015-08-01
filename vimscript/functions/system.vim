" ..\run_.bat system
"
"
" Use -> executable() to determine if a command
" can be executed with system.

redir > system.out

let s:dir = system('dir /b')

echo s:dir

q
