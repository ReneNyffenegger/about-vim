"
"  First, in order for Debug to work, start a server with
"     gvim --servername tq84
"
"  Then, source this file
"     so indentexpr.vim
"
"  Then type away, occasionally with
"    if
"  and
"    else

" Put server in insert mode
   call remote_send('tq84', ':set noai<CR>')
   call remote_send('tq84', 'ifoo')

fu! Debug(txt) " {
   call remote_send('tq84', a:txt . '<CR>')
endfu " }

" fu! FindNonBlankLineAboveCurrentLine() " {
"     call Debug('  FindNonBlankLineAboveCurrentLine')
" 
"     w
" 
" end fu " }

fu! TestIndentExpr(lineNo) " {

   call Debug('')
   call Debug('TestIndentExpr called, lineNo = ' . a:lineNo)
   
   let l:prevNonBlankLineNo  = prevnonblank(a:lineNo - 1)

   if l:prevNonBlankLineNo == 0
      call Debug('  No previous non blank line found, returning 0')
      return 0
   endif

   let l:prevNonBlankLineTxt = getline(l:prevNonBlankLineNo)
   
   call Debug('  PrevNonBlankLineTxt = (' . l:prevNonBlankLineNo . ') ' . prevNonBlankLineTxt)

   let l:prevIndent = indent(l:prevNonBlankLineNo)
   call Debug('  l:prevIndent = ' . l:prevIndent)

   if l:prevNonBlankLineTxt =~ '^ *if\>'
      call Debug('  if found, returning ' . (l:prevIndent+2))
      return l:prevIndent+2
   endif

   if l:prevNonBlankLineTxt =~ '^ *end\>'
      call Debug('  end found, returning ' . (l:prevIndent-2))
      return l:prevIndent-2
   endif

   call Debug('  end found, returning ' . l:prevIndent)
   return l:prevIndent

endfu " }

setl indentexpr=TestIndentExpr(v:lnum)
