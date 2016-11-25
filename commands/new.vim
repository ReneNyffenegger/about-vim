" gvim -c "so new.vim"

new normal.vim
new inexisting.file
new redir.vim

" Vim will no have four buffers, from top to bottom:
"
"    redir.vim
"    inexsting.file
"    redir.vim
"   [no Name]
"
