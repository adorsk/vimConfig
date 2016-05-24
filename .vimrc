let mapleader=","
syntax on
filetype on
filetype indent on
filetype plugin on

set clipboard=unnamed

set encoding=utf-8
set fileencoding=utf-8

runtime macros/matchit.vim

set viminfo='100,f1
set nobackup
set nowritebackup
set noswapfile
set autoindent
set pastetoggle=<F2>
set wildmode=longest,list
set wildmenu
set autochdir
set ruler
set hidden
set smartcase
set noerrorbells

set expandtab
set tabstop=2
set shiftwidth=2

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
let g:ycm_add_preview_to_complete = 0

set regexpengine=1
syntax enable
let b:javascript_fold = 0

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.es6 set ft=javascript

set diffopt+=vertical

set relativenumber

set diffopt+=vertical

call pathogen#infect()

