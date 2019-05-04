if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

  " Dependencies
  Plug 'xolox/vim-misc' " vim notes

  " Editor
  Plug 'joom/vim-commentary'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-obsession'
  Plug 'w0rp/ale'
  Plug 'xolox/vim-notes', {'do': 'mkdir ~/.notes'}
  Plug 'editorconfig/editorconfig-vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'cabaalexander/vim-tmux-runner'
  Plug 'tpope/vim-repeat'
  Plug 'rstacruz/vim-closer'
  Plug 'tpope/vim-endwise'
  Plug 'jiangmiao/auto-pairs'
  Plug 'samoshkin/vim-mergetool'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
  Plug 'junegunn/vim-easy-align'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'

  " Movement / Modes
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'fisadev/dragvisuals.vim'
  Plug 'andymass/vim-matchup'
  Plug 'tpope/vim-projectionist'

  " Text Objects
  Plug 'kana/vim-textobj-user'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'kana/vim-textobj-entire'
  Plug 'kana/vim-textobj-line'
  Plug 'osyo-manga/vim-textobj-blockwise'

  " Autocompletion
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'fszymanski/deoplete-emoji'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern' }
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'

  " UI
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-fugitive'
  Plug 'majutsushi/tagbar'
  Plug 'wesq3/vim-windowswap'
  Plug 'ryanoasis/vim-devicons'
  Plug 'google/vim-searchindex'
  Plug 'tmux-plugins/vim-tmux'
  Plug 'srcery-colors/srcery-vim'
  Plug 'yggdroot/indentline'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ap/vim-buftabline'
  Plug 'cabaalexander/nerdtree-doscript'

  " Search
  Plug 'wincent/scalpel'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'wincent/ferret'

  " Elm
  Plug 'elmcast/elm-vim'

  " GraphQL
  Plug 'jparise/vim-graphql'

  " JavaScript
  Plug 'heavenshell/vim-jsdoc'
  Plug 'othree/yajs.vim', { 'do': 'yarn global add js-beautify' }
  Plug 'maxmellon/vim-jsx-pretty'

  " React
  Plug 'ivo-donchev/goto-definition-plugin-for-react'

  " Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

