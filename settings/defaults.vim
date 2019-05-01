" for linter warnings ¯\\_(ツ)_/¯
scriptencoding utf-8

" Editor
set updatetime=200
set nofoldenable

" UI
set number
set relativenumber
set noerrorbells
set wildmenu
set list
set cursorline
set cursorcolumn
let &colorcolumn='80'

" Tab
set expandtab
set tabstop=4
set shiftwidth=4

" Backup
set undofile
set nobackup
set nowritebackup
set noswapfile

" Don't offer to open certain files/directories
" (These are a sort of break lines) ¯\_(ツ)_/¯
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd,*.un~,*Session.vim
set wildignore+=*/node_modules,*/build

" Change <leader> key to space
let mapleader = "\<space>"

" Change <localleader> key to backslash i.e. \
let maplocalleader = ','

