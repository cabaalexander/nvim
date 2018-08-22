" Only do this when not done yet for this buffer
if exists("b:did_ftplugin_javascript")
  finish
endif
let b:did_ftplugin_javascript=1

" ##########
" #        #
" # Leader #
" #        #
" ##########

" Add documentation to a function
nnoremap <buffer> <leader>d :call JSDocAdd()<CR>

" ##########
" #        #
" # Macros #
" #        #
" ##########

let @f='ifunction () {}iOi' " Function
let @k='oconsole.log(''%c{0}''.replace(''{0}'', ), ''background-color: black; color: white; font-size: 48px;'')==f)' " Formatted Console.log
let @l='oconsole.log()==f)' " Console.log
let @o='i{}iOi' " Object

