"
" ..\run_ create_hash
"
" See also -> initialize_hash.vim

redir > create_hash.out


let my_hash = {}

let my_hash['one'] = 1
let my_hash['two'] = 2
let my_hash['foo'] = {}
let my_hash['foo']['bar'] = 'BAR BAR BAR'
let my_hash['foo']['baz'] = 'BAZ BAZ BAZ'

echo my_hash['one']
echo my_hash['two']
echo my_hash['foo']['bar']
echo my_hash['foo']['baz']

q

" 1
" 2
" BAR BAR BAR
" BAZ BAZ BAZ
