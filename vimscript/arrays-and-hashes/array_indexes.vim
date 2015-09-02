"
"  ..\run_ array_indexes


redir > array_indexes.out

let a = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

echo a[2]
" two

let  two_through_four = a[2:4]
echo two_through_four
" ['two', 'three', 'four']

let  first_four = a[:3]
echo first_four
" ['zero', 'one', 'two', 'three']

let  last_three = a[-3:]
echo last_three
" ['seven', 'eight', 'nine']

let  all_but_last_two = a[:-3]
echo all_but_last_two
" ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven']

" Accessing non existing indexes: {

try
  echo a[10]
catch /E684/
   echo "list index out of range "
endtry

" Use get() instead
echo get(a, 10, 'does not exist')
" does not exist
" }

redir END

q
