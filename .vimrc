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

map w <Plug>CamelCaseMotion_w
map b <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
omap iw <Plug>CamelCaseMotion_iw
xmap iw <Plug>CamelCaseMotion_iw
omap ib <Plug>CamelCaseMotion_ib
xmap ib <Plug>CamelCaseMotion_ib
omap ie <Plug>CamelCaseMotion_ie
xmap ie <Plug>CamelCaseMotion_ie

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
let g:ycm_add_preview_to_complete = 0

set regexpengine=1
syntax enable
let b:javascript_fold = 0

autocmd BufNewFile,BufRead *.json set ft=javascript

set diffopt+=vertical

call pathogen#infect()
