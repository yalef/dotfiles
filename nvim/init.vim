"vim-plug plugin manager

call plug#begin()
"UI
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'
"Text-editing
Plug 'jiangmiao/auto-pairs'
"Code
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'  "pip3 install --user jedi pynvim
Plug 'dense-analysis/ale'   "pip3 install flake8 autopep8
call plug#end()
filetype plugin indent on

set laststatus=2
set number
syntax on
syntax enable
let base16colorspace=256

if has("termguicolors")
    set termguicolors
endif

colorscheme base16-classic-dark
let base16colorspace=256
set background=dark
set noshowmode

set nobackup
set noswapfile
set nowritebackup

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4

"lightline settings
let g:lightline = {
      \ 'colorscheme': 'powerlineish',
      \ 'active': {
      \   'right': [[ 'percent' ],
      \              [ 'fileencoding', 'filetype'] ]}
      \ }

"NerdTree settings
"ctrl+ww - switch
map <C-n> :NERDTreeToggle<CR>

"deoplete settings
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

"ale settings
let g:ale_sign_error = '>>'     "'✗'
let g:ale_sign_warning = '!!'       "'⚠'
let g:ale_lint_on_enter = 1
" If you want to run linters only on save
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_insert_leave = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'python':['autopep8']}
let b:ale_warn_about_trailing_whitespace = 0
map <F3> :ALEFix <CR><bar>:w<CR>

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
