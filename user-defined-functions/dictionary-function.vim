" ..\run_.bat dictionary-function dictionary-function

redir > dictionary-function.out

function FullName(first_last) dict
  if a:first_last
     return self.FirstName . ' ' . self.LastName
  else
     return self.LastName  . ' ' . self.FirstName
  endif
endfu

function CreatePerson(firstName, lastName)
  return {'FirstName': a:firstName, 'LastName': a:lastName, 'GetName': function('FullName')}
endfu

let s:PersonOne = CreatePerson('Peter', 'Muster' )
let s:PersonTwo = CreatePerson('Petra', 'Mustera')

echo s:PersonOne.GetName(0)
" Muster Peter

echo s:PersonTwo.GetName(1)
" Petra Mustera

redir END
q
