set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "lycos"

" General
highlight  LineNr ctermfg=DarkGrey
highlight  Pmenu ctermbg=DarkGrey
highlight  PmenuSBar ctermbg=DarkGrey
highlight  PmenuThumb ctermbg=black

"  Python
highlight pythonDecoratorName ctermfg=DarkGrey cterm=bold
highlight pythonDecorator ctermfg=DarkGrey cterm=bold
highlight pythonStatement ctermfg=yellow
highlight pythonComment ctermfg=DarkGrey
highlight pythonInclude ctermfg=red
highlight pythonString ctermfg=grey
highlight pythonRawString ctermfg=grey
highlight pythonQuotes ctermfg=grey
highlight pythonTripleQuotes ctermfg=blue

