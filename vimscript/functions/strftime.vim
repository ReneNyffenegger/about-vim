" ..\run_ strftime
"

redir > strftime.out

language time en_US.UTF8

echo 'ISO 8601 time format (HH:MM:SS)'
" echo  strftime('%T')
echo  strftime('%H:%M:%S')
echo ''

echo 'YYYY-MM-DD'
" echo  strftime('%F')
echo  strftime('%Y-%m-%d')
echo ''

echo 'Years, 2 digits and 4 digits'
echo  strftime('%y')
echo  strftime('%Y')
echo ''

echo strftime('%c', 0)
" Thu 01 Jan 1970 01:00:00 AM CET


for N in range(char2nr('a'), char2nr('z')) +
\        range(char2nr('A'), char2nr('Z'))
         

" February, 5th, 1970  12:24:36
  echo " " . nr2char(N) . ": " . strftime("%" . nr2char(N), 35 * 24*60*60 + 12*60*60 + 24*60 + 36)
  ;

endfor
" a: Thu
" b: Feb
" c: Thu 05 Feb 1970 01:24:36 PM CET
" d: 05
" e:  5
" f: %f
" g: 70
" h: Feb
" i: %i
" j: 036
" k: 13
" l:  1
" m: 02
" n: 
"
" o: %o
" p: PM
" q: %q
" r: 01:24:36 PM
" s: 3068676
" t: 	
" u: 4
" v: %v
" w: 4
" x: 02/05/1970
" y: 70
" z: +0100
" A: Thursday
" B: February
" C: 19
" D: 02/05/70
" E: %E
" F: 1970-02-05
" G: 1970
" H: 13
" I: 01
" J: %J
" K: %K
" L: %L
" M: 24
" N: %N
" O: %O
" P: pm
" Q: %Q
" R: 13:24
" S: 36
" T: 13:24:36
" U: 05
" V: 06
" W: 05
" X: 01:24:36 PM
" Y: 1970
" Z: CET~/github/about/vim/vimscript


redir END
q
