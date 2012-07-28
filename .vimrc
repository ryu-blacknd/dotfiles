" ----------------------------------------------------------------------
" Encode Settings
" ----------------------------------------------------------------------
set encoding=utf-8
"set encoding=cp932
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

" ----------------------------------------------------------------------
" 256-color Settings for MSYS / MinGW
" ----------------------------------------------------------------------
let &t_Co=256
let &t_AF="\e[38;5;%dm"
let &t_AB="\e[48;5;%dm"

" ----------------------------------------------------------------------
" Plugin Settings
" ----------------------------------------------------------------------
set nocompatible

filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'othree/eregex.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'vim-scripts/The-NERD-Commenter'
NeoBundle 'tpope/vim-markdown.git'
NeoBundle 'nginx.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'matthewtodd/vim-twilight'

filetype plugin indent on

set guifont=Inconsolata_for_Powerline:h13
let g:Powerline_symbols='fancy'

" ----------------------------------------------------------------------
" Color Scheme
" ----------------------------------------------------------------------
syntax on
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
"let g:solarized_contrast="high"
"let g:solarized_visibility="low"
set background=dark
colorscheme solarized
"colorscheme jellybeans
"colorscheme molokai
"colorscheme twilight

" ----------------------------------------------------------------------
" Basic Configurations
" ----------------------------------------------------------------------
set scrolloff=5
set textwidth=0
set nobackup
set autoread
set noswapfile
set hidden
set backspace=indent,eol,start
set formatoptions=lmoq
set vb t_vb=
set browsedir=buffer
set whichwrap=b,s,<,>,[,],~
set showcmd
set ruler
set laststatus=2
set showmode
set mouse=a
set ttymouse=xterm2

" ----------------------------------------------------------------------
" Editor Settings
" ----------------------------------------------------------------------
set number
set showmatch
"autocmd BufWritePre * :%s/\s\+$//e
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab
set smarttab
"set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" ----------------------------------------------------------------------
" Search Settings
" ----------------------------------------------------------------------
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" ----------------------------------------------------------------------
" Completion Settings
" ----------------------------------------------------------------------
set wildmenu
set wildmode=list:longest,full

