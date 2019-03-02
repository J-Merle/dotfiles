set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "lycos"

" General
highlight LineNr ctermfg=DarkGrey
highlight SignColumn ctermbg=none
highlight VertSplit cterm=none
" Pmenu
highlight Pmenu ctermbg=DarkGrey
highlight PmenuSBar ctermbg=DarkGrey
highlight PmenuThumb ctermbg=black

" Folding
highlight FoldColumn ctermbg=None
highlight Folded ctermbg=None

