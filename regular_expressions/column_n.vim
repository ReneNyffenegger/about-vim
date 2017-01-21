" ..\vimscript\run_.bat column_n

redir > column_n.out

"            12345678901
let s:str = 'foo bar baz'

let s:matched = matchstr(s:str, '...\%8c')
echo '>' . s:matched . '<'
" >bar<

fu RegexpForPos(pos, regexp)

   return
   \ '\v'                .
   \ '%<'  . (a:pos + 1) . 'v' .
   \         a:regexp    .     
   \ '%>'  .  a:pos      . 'v'

endfu
                      1         2         3         4         5         6         7  
"            1234567890123456789012345678901234567890123456789012345678901234567890123
let s:str = '# abc-7-def etc #ghi-42-jkl, foo, bar and # yyy-19-zzz or #qqq-234567-rrr'

for s:pos in range(42, 55)

    let s:matched = matchstr(s:str, RegexpForPos(s:pos, '# *\w+-\d+-\w+'))

    echo s:pos . '  >' . s:matched . '<'

endfor
" 42  ><
" 43  ># yyy-19-zzz<
" 44  ># yyy-19-zzz<
" 45  ># yyy-19-zzz<
" 46  ># yyy-19-zzz<
" 47  ># yyy-19-zzz<
" 48  ># yyy-19-zzz<
" 49  ># yyy-19-zzz<
" 50  ># yyy-19-zzz<
" 51  ># yyy-19-zzz<
" 52  ># yyy-19-zzz<
" 53  ># yyy-19-zzz<
" 54  ># yyy-19-zzz<
" 55  ><

redir END
q
