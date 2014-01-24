set background=dark
set autoindent
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set expandtab
set foldmethod=indent
set nofoldenable
set foldlevel=99
set autowrite
set cmdheight=2
set wildmode=longest,list,full
set wildmenu
set wildignorecase
syntax on
filetype plugin indent on
"Change working dir to current dir
:cd %:p:h
"execute Makefile
:map <F9> :! ~/.vim/custom_make.sh<cr>
:imap <F9> <Esc><F9>
"only execute pathogen if it exists
runtime! autoload/pathogen.vim
if exists("*pathogen#infect")
    execute pathogen#infect()
endif
"Split view if multiple files are opened
if argc() == 2
    silent vertical all
endif
