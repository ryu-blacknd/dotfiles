" ----------------------------------------------------------------------
" Encode
" ----------------------------------------------------------------------
set encoding=utf-8
"set encoding=cp932
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

" ----------------------------------------------------------------------
" Plugins
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
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'h1mesuke/unite-outline.git'
NeoBundle 'tsukkee/unite-tag.git'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Shougo/git-vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mattn/gist-vim'
NeoBundle 'othree/eregex.vim'
NeoBundle 'tpope/vim-markdown.git'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'nginx.vim'

NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'matthewtodd/vim-twilight'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'vim-scripts/Lucius'
NeoBundle 'jpo/vim-railscasts-theme'

filetype plugin indent on

set guifont=Inconsolata_for_Powerline:h13
let g:Powerline_symbols='fancy'

" ----------------------------------------------------------------------
" ColorScheme
" ----------------------------------------------------------------------
syntax on
set t_Co=256

" 256-color for MSYS / MinGW
let &t_Co=256
let &t_AF="\e[38;5;%dm"
let &t_AB="\e[48;5;%dm"

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=0
"let g:solarized_contrast="high"
"let g:solarized_visibility="low"
let g:molokai_original = 1

"colorscheme solarized
colorscheme molokai
"colorscheme twilight
"colorscheme jellybeans
"colorscheme mustang
"colorscheme lucius
"colorscheme railscasts

" ----------------------------------------------------------------------
" Configurations
" ----------------------------------------------------------------------
set title
set number
set ruler
"set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"set scrolloff=5
"set textwidth=0
set nobackup
set noswapfile
"set autoread
set hidden
set backspace=indent,eol,start
"set formatoptions=lmoq
"set vb t_vb=
"set browsedir=buffer
"set whichwrap=b,s,<,>,[,],~
set laststatus=2
set showcmd
set showmode
set mouse=a
set ttymouse=xterm2

" ----------------------------------------------------------------------
" Edit
" ----------------------------------------------------------------------
set showmatch
"autocmd BufWritePre * :%s/\s\+$//e
"set autoindent
"set smartindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" ----------------------------------------------------------------------
" Search
" ----------------------------------------------------------------------
set incsearch
set ignorecase
set smartcase
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"---------------------------------------------------------------------------
" Clipboard
"---------------------------------------------------------------------------
if has('mac') && !has('gui')
    nnoremap <silent> <Space>y :.w !pbcopy<CR><CR>
    vnoremap <silent> <Space>y :w !pbcopy<CR><CR>
    nnoremap <silent> <Space>p :r !pbpaste<CR>
    vnoremap <silent> <Space>p :r !pbpaste<CR>
else
    noremap <Space>y "+y
    noremap <Space>p "+p
endif

set clipboard+=unnamed
set pastetoggle=<C-e>

"---------------------------------------------------------------------------
" Tabs
"---------------------------------------------------------------------------
"set showtabline=2
nnoremap <Space>t t
nnoremap <Space>T T
nnoremap t <Nop>
nnoremap <silent> tc :<C-u>tabnew<CR>:tabmove<CR>
nnoremap <silent> tk :<C-u>tabclose<CR>
nnoremap <silent> tn :<C-u>tabnext<CR>
nnoremap <silent> tp :<C-u>tabprevious<CR>

"---------------------------------------------------------------------------
" FuzzyFinder
"---------------------------------------------------------------------------
nnoremap <Space>f f
nnoremap <Space>F F
nnoremap f <Nop>
nnoremap <silent> fb :<C-u>FufBuffer!<CR>
nnoremap <silent> ff :<C-u>FufFile! <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
nnoremap <silent> fm :<C-u>FufMruFile!<CR>
nnoremap <silent> fc :<C-u>FufRenewCache<CR>

" ----------------------------------------------------------------------
" Completion
" ----------------------------------------------------------------------
set wildmenu
set wildmode=list:longest,full

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1 
let g:neocomplcache_enable_underbar_completion = 1

highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4
highlight String ctermfg=brown guifg=Orange cterm=none gui=none
highlight MatchParen guifg=Yellow guibg=DarkCyan
highlight SignColumn guibg=#101020
highlight CursorIM guifg=NONE guibg=Red
highlight CursorLine guifg=NONE guibg=#505050

imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()


"---------------------------------------------------------------------------
" Unite
"---------------------------------------------------------------------------
let g:unite_enable_start_insert=1
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent> ,uc :<C-u>Unite colorscheme<CR>

augroup Shebang
    autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: utf-8 -*-\<nl>\"|$
    autocmd BufNewFile *.rb 0put =\"#!/usr/bin/env ruby\<nl># -*- coding: utf-8 -*-\<nl>\"|$
    autocmd BufNewFile *.tex 0put =\"%&plain\<nl>\"|$
    autocmd BufNewFile *.\(cc\|hh\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
augroup END

" ----------------------------------------------------------------------
" Markdown
" ----------------------------------------------------------------------
let g:quickrun_config = {}
let g:quickrun_config['markdown'] = {
\ 'command': 'bluecloth',
\ 'exec': '%c -f %s'
\ }

