"
" ..\run_ initialize_hash
"
"
"  See also -> create_hash.vim
"

redir > initialize_hash.out

let my_hash = {
  \  'one'  :    1 ,
  \  'two'  : 'foo',
  \  'three':   42 }

echo my_hash['two']
" foo

redir END

q
