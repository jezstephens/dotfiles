set shortmess=atI

set scrolloff=3

set wildmenu
set wildmode=longest:full,full
set wildignore=*.d,*.o
set wildignore=*.png,*.jpg,*.gif

set laststatus=2
set statusline=%F\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%v,%l/%L\ %P
