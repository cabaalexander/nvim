" ============================================================================
" File:        doscript.vim
" Description: Creates an executable script file in the current directory
" Maintainer:  Alexander Caba <cabaalexander321@gmail.com>
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================
scriptencoding utf-8

if exists('g:loaded_nerdtree_doscript')
    finish
endif
let g:loaded_nerdtree_doscript = 1

" ######################
" #                    #
" # doscript (in path) #
" #                    #
" ######################
function! s:do_script() abort
    let node = g:NERDTreeFileNode.GetSelected()

    if empty(node) || !node.path.isDirectory
        call nerdtree#echo('This action cannot be done here. (Try on a dir)')
        return
    endif

    let path = node.path.str()
    let title = 'Do a script here'
    let scriptTemplate = '\#\!/bin/bash\nset -Eeuo pipefail'
    let cmd = 'f(){
                \ echo "'.scriptTemplate.'" > $1;
                \ chmod u+x $1;
                \ };f'

    let info = 'Name your script:'
    let divider = '=========================================================='
    let prompt = title . "\n" . divider . "\n" . info . "\n" . path . '/'
    " TODO: Validate if this name is already in use (¯\\_(ツ)_/¯)
    let scriptName = input(prompt)

    if scriptName ==# ''
        call nerdtree#echo('Script creation aborted.')
        return
    endif

    " silent execute '!doscript -q ' . path . '/' . scriptName . ' &> /dev/null'
    exe '!'.cmd.' '.path.'/'.scriptName
    call nerdtree#echo("Script '" . scriptName . "' created.")
    call node.refresh()
    redraw!
endfunction

function! DoScript() abort
    call s:do_script()
endfunction

function! DoScriptKeyMap(dirnode) abort
    call s:do_script()
endfunction

call NERDTreeAddMenuItem({
            \ 'text': 'do a script (h)ere',
            \ 'shortcut': 'h',
            \ 'callback': 'DoScript' })

call NERDTreeAddKeyMap({
            \ 'key': 'ds',
            \ 'callback': 'DoScriptKeyMap',
            \ 'quickhelpText': 'Create an executable script',
            \ 'scope': 'DirNode' })
