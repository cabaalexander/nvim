if &compatible
  set nocompatible
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set buftype=nofile | read ++edit # | Od_ | diffthis
    \ | wincmd p | diffthis
endif

" Source settings Begin
so ~/.config/nvim/settings/autocmds.vim
so ~/.config/nvim/settings/defaults.vim
so ~/.config/nvim/settings/macros.vim
so ~/.config/nvim/settings/pluginmanager.vim
so ~/.config/nvim/settings/plugin-related.vim
so ~/.config/nvim/settings/statusline.vim

" Mappings
so ~/.config/nvim/settings/mappings/leader.vim
so ~/.config/nvim/settings/mappings/localleader.vim
so ~/.config/nvim/settings/mappings/normal.vim
so ~/.config/nvim/settings/mappings/visual.vim

