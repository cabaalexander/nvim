" ============================================================================
" File:        doscript.vim
" Description: Creates an executable *.sh file in the current directory
" Maintainer:  Alexander Caba <cabaalexander321@gmail.com>
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================

if exists('g:loaded_nerdtree_doscript')
    finish
endif
let g:loaded_nerdtree_doscript = 1

" ######################
" #                    #
" # doscript (in path) #
" #                    #
" ######################
function! DoScript() abort
    let node = g:NERDTreeFileNode.GetSelected()

    if empty(node) || !node.path.isDirectory
        call nerdtree#echo('This action cannot be done here. (Try on a dir)')
        return
    endif

    let path = node.path.str()
    let title = 'Do a script here'
    let info = 'How do you wanna name your new script?:'
    let divider = '=========================================================='
    let prompt = title . "\n" . divider . "\n" . info . "\n" . path . '/'
    let scriptName = input(prompt)

    if scriptName ==# ''
        call nerdtree#echo('Script creation aborted.')
        return
    endif

    silent execute '!doscript -q ' . path . '/' . scriptName . ' &> /dev/null'
    call nerdtree#echo("Script '" . scriptName . "' created.")
    call node.refresh()
    redraw!
endfunction

call NERDTreeAddMenuItem({
            \ 'text': 'do a script (h)ere',
            \ 'shortcut': 'h',
            \ 'callback': 'DoScript' })
