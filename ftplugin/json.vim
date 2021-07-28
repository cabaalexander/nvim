" Only do this when not done yet for this buffer
if exists('b:did_ftplugin_json')
    finish
endif
let b:did_ftplugin_json=1

" ###############
" #             #
" # localleader #
" #             #
" ###############

nnoremap <localleader>vj :call jsonviewer#init()<CR>
