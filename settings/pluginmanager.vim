if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
  " Dependencies
  Plug 'xolox/vim-misc'

  " Editor
  Plug 'joom/vim-commentary'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-obsession'
  Plug 'w0rp/ale'
  Plug 'xolox/vim-easytags'
  Plug '907th/vim-auto-save'

  " Movement / Modes
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'

  " Text Objects
  Plug 'kana/vim-textobj-user'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'kana/vim-textobj-entire'
  Plug 'kana/vim-textobj-line'

  " Autocompletion
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'fszymanski/deoplete-emoji'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern' }

  " UI
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-fugitive'
  Plug 'majutsushi/tagbar'

  " Search
  Plug 'brooth/far.vim'
  Plug 'wincent/scalpel'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  " Elm
  Plug 'elmcast/elm-vim'
call plug#end()

