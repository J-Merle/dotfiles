execute pathogen#infect()
set encoding=utf8
syntax on
colorscheme lycos
filetype indent plugin on

" GENERAL
" Shortcuts
let mapleader=","
nmap <leader>f :w!<cr>
nmap <F12> :registers<cr>
inoremap <leader><Tab> <Esc>/<++><Enter>"_c4l
map <F1> :setlocal spell! spelllang=en_us<CR>
" Automatic surrounding completion
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
" Columns
set rnu nonu
set numberwidth=3
set signcolumn=yes
" Lines
set scrolloff=7
set ts=2 sw=2 et
" Searching
set ignorecase
set smartcase
set incsearch
" Folding
" Size of the folding column
set foldcolumn=1
" Save folding and restore it when loading file
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" PLUGINS
" NERDtree
" Open NerdTree with F5
map <F5> :NERDTree<CR>
" Close vim if NERDTree is the last window opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Nerdtree ignore trash folders
let g:NERDTreeIgnore=['__pycache__', 'htmlcov', 'venv']
" Open NERDtree on the right
"let g:NERDTreeWinPos = "right"

" Ale
let b:ale_linters = ['flake8', 'cpplint']
let g:ale_fixers = {
      \'*': ['trim_whitespace', 'remove_trailing_lines'],
      \'python': ['isort', 'black'], 'cpp': ['astyle'],
      \}
let b:gale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1

" Disable arrow keys because .... you know we don't need this stuff !
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Up> <nop>
noremap <Right> <nop>
