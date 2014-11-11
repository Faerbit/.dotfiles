set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
runtime! autoload/vundle.vim
if exists("*vundle#begin")
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    "Other plugins
    Plugin 'tomtom/tlib_vim'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'garbas/vim-snipmate'
    Plugin 'honza/vim-snippets'
    Plugin 'alfredodeza/coveragepy.vim'

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
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
set foldmethod=indent
set nofoldenable
set foldlevel=99
set autowrite
set cmdheight=2
set scrolloff=7
set wildmode=longest,list,full
set wildmenu
set wildignorecase
set ignorecase
set smartcase
syntax on
filetype plugin indent on
"Change working dir to current dir
:cd %:p:h
"execute Makefile
:map <F9> :! ~/.vim/custom_make.sh<cr>
:imap <F9> <Esc><F9>
"Split view if multiple files are opened
if argc() == 2
    silent vertical all
endif

"Map <F8> on python files
au FileType python :map <F10> :Coveragepy show<cr>
au FileType python :imap <F10> <Esc><F10>

"Map <F9> on Latex files
au FileType tex :map <F9> :! pdflatex %:t; rm *.aux; rm *.log<cr>
