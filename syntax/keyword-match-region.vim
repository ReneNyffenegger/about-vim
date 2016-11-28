" gvim -i NONE -u NONE -N -c "so keyword-match-region.vim"

call append(0, [
 \ 'First line (keyword_four)',
 \ 'foo bar RegStart foo bar',
 \ '  keyword_one etc etc etc',
 \ '  "NOTE: matched syntaxes" and keywords (keyword_one) are not',
 \ '   specially highlighted in regions.',
 \ 'foo bar RegEnd keyword_three foo bar',
 \ '  another string "being qouted", some more text',
 \ 'Another region: RegSta reg reg reg',
 \ '  reg reg RegEn region is finished',
 \ ' keyword_two "quoted words" keyword_three "again: quoted word" keyword_four',
 \ '  Another region: RegSta these words are within a',
 \ '  region RegEnd, these are not',
 \ 'Finally: a keyword within quotes: "let keyword_one = keyword_two+3".'
 \ ])


" syntax enable
" 
syntax case match
" 
syntax keyword SyGrpKeyword keyword_one keyword_two keyword_three
syntax keyword SyGrpKeyword keyword_four

syntax match   SyGrpMatch   /"[^"]*"/hs=s+1,he=e-1

syntax region  SyGrpRegion  start=/\<RegSt\w*/ end=/\<RegE\w*/

hi SyGrpKeyword guifg=red  gui=bold
hi SyGrpMatch   guifg=blue gui=italic
hi SyGrpRegion  guibg=#ccffee

" 
set nomodified
