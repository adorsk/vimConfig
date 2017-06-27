set nocompatible
filetype off

" vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'elzr/vim-json'
Plugin 'ervandew/supertab'
Plugin 'henrik/vim-indexed-search'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-syntastic/syntastic'

call vundle#end()

let mapleader=","
syntax on
set encoding=utf-8
set fileencoding=utf-8

filetype indent on
filetype plugin on

set clipboard=unnamed

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

" colors
let g:solarized_termcolors=256
set background=dark
set colorcolumn=81
highlight ColorColumn ctermbg=8

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

call pathogen#infect()

set omnifunc=syntaxcomplete#Complete
set completeopt-=preview

set regexpengine=1
syntax enable
let b:javascript_fold = 0

" status line
set laststatus=2
set statusline=%.20F       "filename
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['python', 'javascript'],
                            \ 'passive_filetypes': [] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 2
let g:syntastic_javascript_checkers = ['eslint']
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
let g:syntastic_python_checkers = ['pyflakes']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set diffopt+=vertical
set relativenumber
:set mouse-=a
