" gvim -i NONE -u NONE -N -c "so conceal.vim"

call append(0, [
 \ 'some text',
 \ 'foo bar baz',
 \ 'one <c>hidden or concealed</c> two three',
 \ 'for five six',
 \ 'seven eight <c>this might also',
 \ 'be concealed</c> nine',
 \ 'ten eleven.'
 \ ])


syntax    region tq84Conceal start=/<c>/ end=/<\/c>/ conceal

highlight        tq84Conceal guibg=#eeeeee guifg=#226633

for i in range(0,3)
  "   TODO: see also option concealcursor
  set conceallevel=0
  redraw
  sleep 1

  set conceallevel=3
  redraw
  sleep 1
endfor

set nomodified
