" defaults
so ~/.config/nvim/settings/defaults.vim
so ~/.config/nvim/settings/macros.vim
so ~/.config/nvim/settings/plugin-related.vim
so ~/.config/nvim/settings/usercommands.vim

" Mappings
so ~/.config/nvim/settings/mappings/leader.vim
so ~/.config/nvim/settings/mappings/localleader.vim
so ~/.config/nvim/settings/mappings/normal.vim
so ~/.config/nvim/settings/mappings/insert.vim
so ~/.config/nvim/settings/mappings/visual.vim
so ~/.config/nvim/settings/mappings/terminal.vim

" overwrite settingss
nnoremap <leader>x :qa!<CR>
set shortmess=I

" plugins
call plug#begin('~/.config/nvim/plugged')
  " Dependencies
  Plug 'xolox/vim-misc' " vim notes

  " Editor
  Plug 'xolox/vim-notes', { 'do': 'mkdir ~/.notes'}
call plug#end()

" Terminal mode
au TermOpen * :call TermAU()
function! TermAU() abort
  setlocal nonumber
  setlocal norelativenumber
endfunction
