" ..\run_ printf

redir > printf.out

echo printf('%s %s %f', 'foo', 'bar', 42.42)
" foo bar 42.420000

echo printf('>%6s< >%6s< >%3.1f<', 'foo', 'bar', 42.42)
" >   foo< >   bar< >42.4<

echo printf('>%-6s< >%-6s< >%6.1f<', 'foo', 'bar', 42.42)
" >foo   < >bar   < >  42.4<

redir END
q
