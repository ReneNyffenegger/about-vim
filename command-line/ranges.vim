" gvim -i NONE -u NONE -U NONE --cmd "set go=M" -nN -S ranges.vim
" cat ranges.out
"
" :help cmdline-ranges

call append(0, [
   \ 'one'    ,
   \ 'two'    ,
   \ 'three'  ,
   \ 'four'   ,
   \ 'five'   ,
   \ 'six'    ,
   \ 'seven'  ,
   \ 'eight'  ,
   \ 'nine'   ,
   \ 'BAR'    ,
   \ 'ten'    ,
   \ 'eleven' ,
   \ 'BAZ'    ,
   \ 'twelve' ,
   \ 'BAZ'    ,
   \ 'xyz'
   \ ])


fu ShowRange() range
   echo printf("cur: %2d [%-10s] from: %2d [%-10s], to:  %2d [%-10s]", line('.'), getline('.'), a:firstline, getline(a:firstline), a:lastline, getline(a:lastline))
endfu

3
normal ma

7
normal mb

redir > ranges.out

silent 4
:      call ShowRange()

silent 4
:.     call ShowRange()

silent 4
:7     call ShowRange()

silent 4
:.,7   call ShowRange()

echo "-- Marks"

silent 4
:'a,'b call ShowRange()

echo "---------------"

silent 4
:-     call ShowRange()

silent 4
:-2    call ShowRange()

echo "---------------"
silent 7
:/BAR/,/BAZ/ call ShowRange()

" Note the difference that the »,« vs the »;« makes:
"   »,« from current cursor position,
"   »;« from the last »match«
silent /twelve/
:8,/BAZ/ call ShowRange()

silent /twelve/
:8;/BAZ/ call ShowRange()

echo ""

redir END
set nomodified

q
