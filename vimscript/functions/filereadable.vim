" ..\run_ filereadable

redir > filereadable.out

fu! CheckFile(fileName) " {
   if filereadable(a:fileName)
      echo a:fileName . ' is readable'
    else
      echo a:fileName . ' is not readable'
    endif
endfu " }


call CheckFile('filereadable.vim')
call CheckFile('inexisting.file' )

redir END
q

" filereadable.vim is readable
" inexisting.file is not readable
