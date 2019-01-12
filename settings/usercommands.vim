" Example command
com! -complete=custom,ListUsers -nargs=1 Finger !finger <args>
fun! ListUsers(A,L,P)
    return system("cut -d: -f1 /etc/passwd")
endfun

" Send command to the next tmux pane
com! -nargs=1 TMUXSend call utils#tmuxSend('<args>')

" vim: ts=8:sw=8
