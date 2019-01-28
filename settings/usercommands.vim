" vim: ts=8:sw=8

" Send command to the next tmux pane
com! -nargs=1 TMUXSend call tmux#send('<args>')

" Formats JSON
command FormatJSON %!python -m json.tool

