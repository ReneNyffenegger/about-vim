" ..\vimscript\run_.bat normal
"

" create a new file, write some simple text
new
execute "normal ione\<CR>two\<CR>three\<CR>four\<CR>five\<CR>six\<CR>seven\<CR>eight\<CR>nine\<ESC>"

" normal vs normal! {
"
"   normal! is like normal, but ignores mappings the user has set up.
"
"   So, in the following example, mm1 will use the remapped dd while
"   mm2 won't.

" create a mapping dd
nmap dd ciwmapping dd used

" Use dd on 2nd line:
normal /two
normal dd

nmap mm1 :normal  ddiText from mapping 1
nmap mm2 :normal! ddiText from mapping 2

normal /five
normal mm1

normal /eight
normal mm2

" }

" Name new file normal.txt
write normal.txt

redir > normal.out



let s:lines = readfile('normal.txt')
for s:line in s:lines
  echo s:line
endfor




redir END

call delete('normal.txt')

q

" one
" mapping dd used
" three
" four
" mapping dd usediText from mapping 1
" six
" seven
" Text from mapping 2nine
