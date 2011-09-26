runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set shortmess=atI

colorscheme zenburn

filetype plugin indent on
syntax on

set foldmethod=syntax
set nofoldenable

set wildmenu
set wildmode=longest:full,full

set hlsearch incsearch

set nojoinspaces

set ignorecase smartcase

set scrolloff=3

set hidden

set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2

set laststatus=2
set statusline=%F\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set list listchars=tab:»\ ,trail:·
highlight SpecialKey ctermfg=7

let NERDSpaceDelims=1
let NERDCompactSexyComs=1

nnoremap ' `
nnoremap ` '

noremap ;; ;
map ; :
map q; q:

let mapleader = ","
let g:mapleader = ","

nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>

:nnoremap <silent> <C-l> :nohl<CR><C-l>

set history=200

if filereadable($HOME . "/.vimrc.local")
  source $HOME/.vimrc.local
endif
