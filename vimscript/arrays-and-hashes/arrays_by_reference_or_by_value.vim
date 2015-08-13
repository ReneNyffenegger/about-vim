"
"  ..\run_ arrays_by_reference_or_by_value
"
"  See also ../pass_by_reference_or_by_value.vim
"

redir > arrays_by_reference_or_by_value.out

let a = [
  \  'zero',
  \  'one',
  \  ['foo', 'bar'],
  \  'three']


let b = a[2]

call add(b, 'baz')

echo b
" ['foo', 'bar', 'baz']

echo a[2]
" ['foo', 'bar', 'baz']

let c=copy(a[2])
call add(c, 'qux')

echo c
" ['foo', 'bar', 'baz', 'qux']

echo a[2]
" ['foo', 'bar', 'baz']

q
