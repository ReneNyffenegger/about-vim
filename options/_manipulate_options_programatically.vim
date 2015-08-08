" ..\vimscript\run_.bat _manipulate_options_programatically
"
redir > _manipulate_options_programatically.out

" Is ignore case on or off?
echo &ic
" 0

" Set ignore case on
let &ic = 1
echo &ic
" 1

" Set ignore case off
let &ic = 0
echo &ic
" 0

" dynamically gettion options value
let s:optionName = 'ic'
echo eval('&' . s:optionName)
" 0

redir END

q
