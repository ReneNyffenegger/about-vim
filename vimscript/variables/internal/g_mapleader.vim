"
"  ..\run_ g_mapleader
"
"
"  The value of g:mapleader is used at the definition of a mapping,
"  not when it is used!
"

redir > g_mapleader.out

let g:mapleader=","
nnoremap <leader>go :echo "mapleader currently is a comma"<CR>

let g:mapleader="/"
nnoremap <leader>go :echo "mapleader currently is a slash"<CR>


execute "normal ,go"
execute "normal /go"


redir END
q

" mapleader currently is a comma
" mapleader currently is a slash
