" :help complete-functions
"
" This option names a function to be called for insert mode
" omni completion with ctrl-x ctrl-o.
"
" See also completefunc

function! TestOmniFunc(findstart, base) " {

  call TQ84_log_indent(expand('<sfile>'))

  call TQ84_log('a:findstart = ' . a:findstart)

  if a:findstart == 1 " {
  "  first invocation
  "  ----------------
  "  
  "  The function must return the column
  "  where the completion starts. It must
  "  be a number between zero and the cursor
  "  colum [ col(".") ].
  "
  "  If no completion is desired, -1 should
  "  be returned. (But it seems as though
  "  this doesn't influence anything)
  
     " Find the start of the word to be completed'
     let l:base_pos     = col    (".") - 1
     let l:current_line = getline(".")

     call TQ84_log('l:base_pos='     . l:base_pos)
     call TQ84_log('l:current_line=' . l:current_line)

     if l:current_line[l:base_pos-1] =~ '\s'
        call TQ84_log('returning -1')
        call TQ84_log_dedent()
        return -1
     endif

     let l:base_pos = l:base_pos - 1

     while l:current_line[l:base_pos -1] =~ '\w'
           let l:base_pos = l:base_pos - 1
     endwhile

     call TQ84_log("returning l:base_pos=" . l:base_pos)
     call TQ84_log_dedent()

     return l:base_pos

  endif " }

  "  second invocation
  "  -----------------
  "
  "  The function returns a list with the matching words
  
  if a:base == ""
     call TQ84_log('a:base == "", returning -1')
     call TQ84_log_dedent()
     return -1
  endif

  if a:base ==? "numbers" 
     call TQ84_log('a:base ==? numbers')
     call TQ84_log_dedent()
     return ['one', 'two', 'three', 'four', 'five']
  endif

  if a:base ==? "days" 
     call TQ84_log('a:base ==? days')
     call TQ84_log_dedent()
     return ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
  endif

  call TQ84_log('Return "Base: ' . a:base . '"')
  call TQ84_log_dedent()

  return ['Base: ' . a:base]

endfu " }


setlocal omnifunc=TestOmniFunc
