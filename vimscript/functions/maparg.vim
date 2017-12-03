" ../run_ maparg

redir > maparg.out

inoremap tq84_one ONE
echo maparg('tq84_one', 'i')  " ONE
echo maparg('tq84_one', 'n')  "
echo maparg('tq84_two', 'i')  "

nnoremap tq84_one ONE-n
echo maparg('tq84_one', 'n')  " ONE-n

echo "\n"

redir END

q
