if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

"NeoBundle 'Shougo/vimproc.vim', {
"	\ 'build' : {
"	\   'windows' : 'tools\\update-dll-mingw',
"	\   'cygwin' : 'make -f make_cygwin.mak',
"	\   'mac' : 'make',
"	\   'linux' : 'make',
"	\   'unix' : 'gmake',
"	\ },
"\ }
"NeoBundle 'Shougo/vimshell'
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/vimfiler.vim'
"NeoBundle 'lilydjwg/colorizer'
"NeoBundle 'tpope/vim-fugitive'
":set statusline+=%{fugitive#statusline()}
"NeoBundle 'itchyny/lightline.vim'
"NeoBundle 'hallison/vim-markdown'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'w0ng/vim-hybrid'

call neobundle#end()

syntax on
set t_Co=256
set background=dark
colorscheme hybrid

" Required:
filetype plugin indent on

set number
set nobackup
set noswapfile
set tabstop=4
set softtabstop=4
set pastetoggle=<C-e>
let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
