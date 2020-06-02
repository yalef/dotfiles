"vim-plug plugin manager

call plug#begin()
"UI
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
"Text-editing
Plug 'JamshedVesuna/vim-markdown-preview'
call plug#end()
filetype plugin indent on
set laststatus=2
set number
syntax enable
set termguicolors
let ayucolor='mirage'
colorscheme ayu
set noshowmode
set cursorline

set nobackup
set noswapfile
set nowritebackup
set encoding=utf-8
set fileencodings=utf8,cp1251

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent  "autotab
set showtabline=1

"lightline settings
let g:lightline = {
      \ 'colorscheme': 'ayu_mirage',
      \ 'active': {
      \   'right': [[ 'percent' ],
      \              [ 'fileencoding', 'filetype'] ]}
      \ }

"NerdTree settings
"ctrl+ww - switch
map <C-n> :NERDTreeToggle<CR>

"Key Bindings
"install xclip for copy/cut work correctly
"copy ctrl+c
map <C-c> "+y
"paste ctrl+v
map <C-v> "+p
"ctrl + z - undo
map <C-z> u
"ctrl + f - find
map <C-f> /
"disable command line window
map q: <Nop>

"tabs
map <C-t> :tabnew<CR>
map <C-Left> :tabprevious<CR>
map <C-Right> :tabnext<CR>
