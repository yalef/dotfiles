"vim-plug plugin manager

call plug#begin()
"UI
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
"Text-editing
Plug 'jiangmiao/auto-pairs' 
call plug#end()
filetype plugin indent on

"Basic
set laststatus=2            "Statusline enabled
set number                  "Line numbers
set hidden                  "Required to keep multiple buffers open multiple buffers
syntax enable               "Syntax highlight enable

if exists('+termguicolors') "True color support
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set t_Co=256                "256 color support

let ayucolor='mirage'       "Colorscheme 
colorscheme ayu             "Colorscheme
set noshowmode              "Dont see --INSERT--
set cursorline              "Highlight active line
set ruler                   "Always show cursor position
set cmdheight=2             "Bigger cmd space

set clipboard=unnamedplus       "Copy-paste from nvim to everywhere
set encoding=utf-8              "Set encoding
set fileencodings=utf8,cp1251   "Encoding writing in file
set ignorecase                  "Ignore case when searching
set smartcase                   "Turn on smartcase
set expandtab                   "Convert tabs to spaces
set tabstop=4                   "Tab size - 4 spaces
set shiftwidth=4                "Indent is 4 spaces
set autoindent                  "Autotab
set smartindent                 "Smart autotab
set showtabline=1               "Show tabline if opened 2 or more tabs

set updatetime=300              "Faster completion
set timeoutlen=500              "Faster timeout
set nobackup
set noswapfile
set nowritebackup

"Lightline settings
let g:lightline = {
      \ 'colorscheme': 'ayu_mirage',
      \ 'active': {
      \   'left':[['mode'], ['readonly', 'absolutepath']],
      \   'right': [[ 'percent' ],
      \              [ 'fileencoding', 'filetype'] ]}
      \ }

"NerdTree settings
"ctrl+ww - switch
map <C-n> :NERDTreeToggle<CR>

"Key Bindings
"Install xclip for copy/cut work correctly
"Copy ctrl+c
map <C-c> "+y
"Paste ctrl+v
map <C-v> "+p
"Ctrl + z - undo
map <C-z> u
"Ctrl + f - find
map <C-f> /
"Disable command line window
map q: <Nop>

"Tabs
map <C-t> :tabnew<CR>
map <C-Left> :tabprevious<CR>
map <C-Right> :tabnext<CR>
