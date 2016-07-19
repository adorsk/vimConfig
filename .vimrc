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

call pathogen#infect()

set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
let g:ycm_add_preview_to_complete = 0

set regexpengine=1
syntax enable
let b:javascript_fold = 0

set laststatus=2
set statusline=%.20F       "filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
"set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['python', 'javascript'],
                            \ 'passive_filetypes': [] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.es6 set ft=javascript

set diffopt+=vertical

set relativenumber

set diffopt+=vertical
