execute pathogen#infect()

" Line numbers
set number relativenumber
set numberwidth=4
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey
highlight LineRnr term=bold cterm=NONE ctermfg=DarkGrey


filetype indent plugin on
set ts=2 sw=2 et

" Searching
set ignorecase
set smartcase
set incsearch

map <F1> :setlocal spell! spelllang=en_us<CR>
" ########## Syntastic #####################
"map z :w<Enter>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
syntax on
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_wq = 0
" ##########################################
