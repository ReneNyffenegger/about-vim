" ..\run_ strftime
"

redir > strftime.out

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

echo strftime('%c')
" 13.08.2015 15:19:22

redir END
q
