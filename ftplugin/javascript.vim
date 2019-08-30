" Only do this when not done yet for this buffer
if exists("b:did_ftplugin_javascript")
  finish
endif
let b:did_ftplugin_javascript=1

" ############
" #          #
" # Defaults #
" #          #
" ############
set tabstop=2
set shiftwidth=2

" ##########
" #        #
" # Leader #
" #        #
" ##########

" Add documentation to a function
nnoremap <buffer> <leader>d :JsDoc<CR>
nnoremap <buffer> <silent> <leader>D :call ReactGotoDef()<CR>

" ##########
" #        #
" # Macros #
" #        #
" ##########

let @f='ifunction () {}iOi' " Function
let @k='oconsole.log(''%c{0}''.replace(''{0}'', ),''background-color: black; color: white; font-size: 48px;''jA;2kf)' " Formatted Console.log
let @l='oconsole.log()==f)i' " Console.log
let @o='i{}iOi' " Object

