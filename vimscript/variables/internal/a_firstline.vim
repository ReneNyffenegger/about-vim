fu! TestFunc() range

  " When a function is decorated with the «range» modifier,
  " it is passed implicit a:firstline and a:lastline arguments
  " The values of these arguments denote the line of the cursor
  " when no visual selection is used or the first and last line
  " of a visual selection.

  echo 'first line is: ' . a:firstline . ', last line is: ' . a:lastline

endfu
