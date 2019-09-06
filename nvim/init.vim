"vim-plug plugin manager

call plug#begin()
"	General
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

set number
syntax on
syntax enable
let base16colorspace=256

if has("termguicolors")
    set termguicolors
endif

set nobackup
set noswapfile
set nowritebackup

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

"lightline settings
let g:lightline = {
      \ 'colorscheme': 'OldHope',}

"NerdTree settings
"ctrl+ww - switch
map <C-n> :NERDTreeToggle<CR>
