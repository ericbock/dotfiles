call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'janko-m/vim-test'
Plug 'jmcantrell/vim-virtualenv'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
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

set showcmd

map <space> <leader>

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_log_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_html_tidy_quiet_messages = { "regex": "proprietary attribute" }

" airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ctrlp settings
let g:ctrlp_extensions = ['tag']

" tagbar settings
nmap <F8> :TagbarToggle<CR>

" fugitive-gitlab settings
let g:fugitive_gitlab_domains=['http://gitlab']

" vim-test settings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>

" ag settings
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" python settings
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*pyw set expandtab
