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
    Plugin 'wting/rust.vim'
    Plugin 'tomtom/tlib_vim'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'garbas/vim-snipmate'
    Plugin 'honza/vim-snippets'
    Plugin 'alfredodeza/coveragepy.vim'
    Plugin 'tikhomirov/vim-glsl'
    Plugin 'chrisbra/vim-show-whitespace'
    Plugin 'krisajenkins/vim-projectlocal'

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
endif
"Split view if multiple files are opened
if argc() == 2
    autocmd VimEnter * nested silent vertical all
    "silent vertical all
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
set ruler
syntax on
filetype plugin indent on
imap jk <Esc>
map <F2> :set nonumber!<CR>
set pastetoggle=<F3>
"Change working dir to current dir
":cd %:p:h
"execute Makefile
:map <F9> :! ~/.vim/custom_make.sh<cr>
:imap <F9> <Esc><F9>

"Map <F8> on python files
au FileType python :map <F8> i <F8>
au FileType python :imap <F8> import pdb; pdb.set_trace()<ESC>
"Map <F10> on python files
au FileType python :map <F10> :Coveragepy show<cr>
au FileType python :imap <F10> <Esc><F10>

"Map <F9> on Latex files
au FileType tex :map <F9> :! if [ -f Makefile ]; then; make; else; pdflatex %:t; rm *.aux; rm *.log; fi<cr>

"Highlight chars after column 80
match ErrorMsg '\%>80v.\+'
