function! tmux#send(...) abort
    " Sends a shell command to a tmux pane
    let l:defaultCmd = expand('%:p')
    let l:argumentCmd = get(a:, 1)
    let l:autoClear = get(g:, 'tmuxSendAutoClear')
    let l:notification = get(g:, 'tmuxSendNotification')

    " This checks if the only argument passed is ok
    if !(l:argumentCmd =~# '^0$')
        " If the argument is 'this' run current
        if l:argumentCmd ==# 'this'
            let b:tmuxSendCMD = l:defaultCmd
        else
            let b:tmuxSendCMD = l:argumentCmd
        endif
    endif

    if !(l:autoClear == 0)
        let l:clear = 'clear && '
    else
        let l:clear = ''
    endif

    if !(l:notification == 0)
        let l:display = ' ; dsply -b "Process complete" "tmuxSend"'
    else
        let l:display = ''
    endif

    let l:cmd = get(b:, 'tmuxSendCMD', l:defaultCmd)
    let l:pane = get(g:, 'tmuxSendPane', 'next')
    let l:options = get(g:, 'tmuxSendOptions', '')

    if get(g:, 'tmuxSendAutoSave', 0) == 1 | w | endif

    execute("silent !tmux send -t :.{".l:pane."} '".l:clear.l:cmd." ".l:options.l:display."' Enter")
    redraw
    echom "tmuxSend: ".l:cmd." ".l:options
endfunction

