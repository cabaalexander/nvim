" ###############
" #             #
" # NERDTreeAPI #
" #             #
" ###############

" # Open visually selected files
" # ============================
execute 'vnoremap <buffer> <leader>o :call <SID>OpenMultiple("p")<CR>'
execute 'vnoremap <buffer> <leader>x :call <SID>OpenMultiple("h")<CR>'
execute 'vnoremap <buffer> <leader>v :call <SID>OpenMultiple("v")<CR>'

function! s:buffer_is_empty()
    if line('$') == 1 && getline(1) ==# ''
        return 1
    else
        return 0
    endif
endfunction

function! s:close_if_empty() abort
    if s:buffer_is_empty()
        silent bd!
    endif
endfunction

function! s:OpenMultiple(target) range
    let curLine = a:firstline
    while curLine <= a:lastline
        call cursor(curLine, 1)
        let node = g:NERDTreeFileNode.GetSelected()
        call nerdtree#echo('Opening ' . (curLine - a:firstline + 1) . ' of ' . (a:lastline - a:firstline + 1) . '...')
        if !empty(node) && !node.path.isDirectory
            call node.open({'where':a:target, 'stay':1, 'keepopen':1})
        endif
        let curLine += 1
    endwhile
    bufdo call <SID>close_if_empty()
    if g:NERDTreeQuitOnOpen
        NERDTreeClose
    endif
    call nerdtree#echo('')
endfunction
