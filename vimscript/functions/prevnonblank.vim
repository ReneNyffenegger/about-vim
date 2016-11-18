" ..\run_ prevnonblank

redir > prevnonblank.out

r     prevnonblank.vim
let   s:lineNo = search('^echo \+prevnonblank')
echo 's:lineNo = ' . s:lineNo
echo 'getline(s:lineNo) = ' . getline(s:lineNo)


echo  prevnonblank(s:lineNo - 1)
" 8

redir END
q
