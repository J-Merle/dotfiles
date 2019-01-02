execute pathogen#infect()

let mapleader = ","
set encoding=utf8

colorscheme lycos

" Leader shortcuts
nmap <leader>f :w!<cr>
nmap <leader>q :q!<cr>

inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l

" Python
autocmd FileType python inoremap ,def def (<++>):<Esc>F(i
autocmd FileType python inoremap __ ____<Esc>hi

" Markedown
autocmd FileType markdown inoremap ,h1 # 
autocmd FileType markdown inoremap ,h2 ##
autocmd FileType markdown inoremap ,h3 ###


" Line numbers
set number relativenumber
set numberwidth=4

filetype indent plugin on
set ts=2 sw=2 et

" Searching
set ignorecase
set smartcase
set incsearch

map <F1> :setlocal spell! spelllang=en_us<CR>

" Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
syntax on
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_wq = 0


" Folding
set foldcolumn=2
highlight FoldColumn ctermbg=None
highlight Folded ctermbg=None

" Automatic surrounding completion
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
