" gvim -i NONE -u NONE -U NONE --cmd "set go=M" -nN -S _options-local-to-window.vim
"
" This script tries to find out how options »local to a window« behave.
"
" http://vi.stackexchange.com/questions/10476/i-dont-understand-the-purpose-and-behavior-of-options-local-to-a-windows
"

for fooFile in glob('c:\temp\*.foo', 0, 1)
    call delete(fooFile)
endfor

e c:\temp\abc.foo
set colorcolumn=1

split
e c:\temp\def.foo
execute 'normal icolorcolumn=' . &colorcolumn . nr2char(10)
set colorcolumn=2
execute 'normal icolorcolumn=' . &colorcolumn . nr2char(10)
w

e c:\temp\ghi.foo
execute 'normal icolorcolumn=' . &colorcolumn . nr2char(10)
set colorcolumn=3
execute 'normal icolorcolumn=' . &colorcolumn . nr2char(10)
w

" split
" e c:\temp\def.foo
" execute 'normal icolorcolumn=' . &colorcolumn . nr2char(10)

" to to abc.foo
normal j

q
bu def.foo
execute 'normal icolorcolumn=' . &colorcolumn . nr2char(10)
w
