" === vundle ===

source ~/.vim/vundles.vim

" === syntax ===

set foldmethod=syntax
set nofoldenable

" === bindings ===

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

" === editing ===

set nojoinspaces

" display unprintable characters
set list listchars=tab:»\ ,trail:·
highlight SpecialKey ctermfg=7

" === misc ===

set hidden
set history=200

cd ~/src/maj/meet-and-jam
