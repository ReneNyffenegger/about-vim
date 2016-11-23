" ..\run_ timer_start

redir > timer_start.out


fu! TimerFunc(timerID) " {

    echo 'TimerFunc: ' . a:timerID . ', seconds passed: ' . printf("%02.1f", reltimefloat(reltime(s:tm_start)))

endfu " }

let s:tm_start = reltime()

echo 'Started timer with id ' . timer_start(1000, 'TimerFunc')
echo 'Started timer with id ' . timer_start( 400, 'TimerFunc', {'repeat': 4})

sleep 3

redir END
q

" Started timer with id 1
" Started timer with id 2
" TimerFunc: 2, seconds passed: 0.4
" TimerFunc: 2, seconds passed: 0.8
" TimerFunc: 1, seconds passed: 1.0
" TimerFunc: 2, seconds passed: 1.2
" TimerFunc: 2, seconds passed: 1.6
