call plug#begin('~/.vim/plugged')

Plug('tpope/vim-commentary')

call plug#end()

"Split view if multiple files are opened
if argc() == 2
    silent vertical all
endif

set background=dark
set autoindent
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set expandtab
set autowrite
set cmdheight=2
set scrolloff=7
set wildmode=longest,list,full
set wildmenu
set wildignorecase
set ignorecase
set smartcase
set ruler
syntax on
filetype plugin indent on
imap jk <Esc>
map <F2> :set nonumber!<CR>
set pastetoggle=<F3>
