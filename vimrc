call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'nanotech/jellybeans.vim'
call plug#end()

syntax on
filetype plugin indent on

set number

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase

set smartcase

set hlsearch

set incsearch

set magic

set showmatch

set mat=2

syntax enable

color jellybeans

set expandtab

set smarttab

set shiftwidth=2
set tabstop=2

set ai
set si
set wrap

set list

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_log_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" python settings
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*pyw set expandtab
