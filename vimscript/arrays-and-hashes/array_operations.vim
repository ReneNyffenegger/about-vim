"
"  ..\run_ array_operations

redir > array_operations.out

let a = ['one', 'two', 'three']

call add(a, 'four')
echo a
" ['one', 'two', 'three', 'four']

call extend(a, ['five', 'six', 'seven'])
echo a
" ['one', 'two', 'three', 'four', 'five', 'six', 'seven']

call extend(a, ['***', '###'], 4)
echo a
" ['one', 'two', 'three', 'four', '***', '###', 'five', 'six', 'seven']

let r = remove(a, -1)
echo r
" seven

echo a
" ['one', 'two', 'three', 'four', '***', '###', 'five', 'six']

let p = remove(a, 4, 5)
echo p
" ['***', '###']

echo a
" ['one', 'two', 'three', 'four', 'five', 'six']

let b = a + ['using', 'plus']
echo b
" ['one', 'two', 'three', 'four', 'five', 'six', 'using', 'plus']

echo 'len(b): ' . len(b)
" len(b): 8

q
