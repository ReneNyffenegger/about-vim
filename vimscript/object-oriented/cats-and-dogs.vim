" ../run_ cats-and-dogs
"
"   Inspired by http://vi.stackexchange.com/a/3923/985
"

redir > cats-and-dogs.out


let g:Animal={}

function g:Animal.new(typicalSound, name)

  let l:newAnimal = copy(self)

  let l:newAnimal.typicalSound = a:typicalSound
  let l:newAnimal.name         = a:name

  return l:newAnimal

endfu

function g:Animal.sayName()
  echo self.typicalSound . ', I am ' . self.name
endfu

let g:Dog={}
function g:Dog.new(name)
  let    l:newDog = g:Animal.new('Wuff', a:name)
  return l:newDog
endfu

let g:Cat={}
function g:Cat.new(name)
  let    l:newCat = g:Animal.new('Meow', a:name)
  return l:newCat
endfu



let s:animal_one   = Dog.new('Charlie')
let s:animal_two   = Cat.new('Misty')
let s:animal_three = Dog.new('Daisy'  )


call s:animal_one.sayName()
" 
" Wuff, I am Charlie


call s:animal_two.sayName()
"
" Meow, I am Misty


call s:animal_three.sayName()
"
" Wuff, I am Daisy



redir END
q
