set nocompatible
filetype off

" vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'henrik/vim-indexed-search'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-abolish'
Plugin 'majutsushi/tagbar'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'w0rp/ale'
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
autocmd VimEnter * set autochdir
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

"ALE config
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
nmap <silent> <leader>af :ALEFix<cr>
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier-eslint']

set diffopt+=vertical
set relativenumber
:set mouse-=a

set foldlevelstart=99

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

