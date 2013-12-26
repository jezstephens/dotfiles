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

" force copy (as opposed to rename) on backup to work around this issue:
" https://github.com/karma-runner/karma/issues/199
" https://github.com/paulmillr/chokidar/issues/35
set backupcopy=yes

" === misc ===

set hidden
set history=200
