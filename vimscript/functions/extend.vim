" ../run_ extend
redir > extend.out

let s:list_1  = [0, 1, 2, 3 ]
let s:list_2  = ['a','b','c']

call extend(s:list_1, s:list_2)
echo string(s:list_1)
" [0, 1, 2, 3, 'a', 'b', 'c']


let s:list_1  = [0, 1, 2, 3 ]
let s:list_2  = ['a','b','c']

call extend(s:list_1, s:list_2, 1)
echo string(s:list_1)
" [0, 'a', 'b', 'c', 1, 2, 3]


let s:dict_1 = {'foo': 'Phoe', 'bar': 'Bhar'}
let s:dict_2 = {'baz': 'Buhs'}

call extend(s:dict_1, s:dict_2)
echo string(s:dict_1)
" {'foo': 'Phoe', 'baz': 'Buhs', 'bar': 'Bhar'}

redir END
q
