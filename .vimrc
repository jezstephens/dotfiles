let g:vimwiki_list = [{
\ 'path':   '~/wiki',
\ 'syntax': 'markdown',
\ 'ext':    '.markdown'
\ }]
let g:vimwiki_ext2syntax = {
\ '.wiki': 'default',
\ '.markdown': 'markdown',
\ '.md': 'markdown',
\ '.mdown': 'markdown'
\ }
let g:vimwiki_global_ext = 1

" === plug ===

source ~/.vim/plug.vim

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

nnoremap <leader>o :call RangerChooser()<CR>

" === editing ===

set nojoinspaces
set updatetime=1000

" display unprintable characters
set list listchars=tab:»\ ,trail:·
highlight SpecialKey ctermfg=7

" === misc ===

set hidden
set history=200
