execute pathogen#infect()

set nu
filetype indent plugin on
set ts=2 sw=2 et

" ########## Syntastic #####################
map z :w<Enter>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
syntax on
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_wq = 0
" ##########################################
