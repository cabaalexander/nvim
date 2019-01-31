function! tmux#attachToNext() abort
    let l:tmuxNextPane = system('tmux display -pF "#P"') + 1
    execute(':VtrAttachToPane ' . l:tmuxNextPane)
endfunction
