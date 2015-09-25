"
"  ..\run_ comparing
"

redir > comparing.out

let a = [ 1   ,  2   ,  3     ]
let b = ['1'  , '2'  , '3'    ]
let c = ['one', 'two', 'three']
let d = [ 1   ,  2   ,  3     ]
let e = [ 3   ,  2   ,  1     ]

if a == b
   echo 'a == b'
else
   echo 'a != b'
endif
" a != b

if a == c
   echo 'a == c'
else
   echo 'a != c'
endif
" a != c

if a == d
   echo 'a == d'
else
   echo 'a != d'
endif
" a == d

if a == e
   echo 'a == e'
else
   echo 'a != e'
endif
" a != e

q
