" vim: ts=2:sw=2

" Formats JSON
command! FormatJSON %!python -m json.tool

" View JSON
command! ViewJSON
  \ :set ft=json
  \ | :call jsonviewer#init()
  \ | :bp!
  \ | :bd!

" Find using `rg`
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --hidden --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Main `rg` find (that I use)
command! -bang -nargs=* Find
  \ call fzf#vim#grep(
  \   'rg -g !node_modules -g !.git --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0)


" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Puts the output of a command to a new window
command! -nargs=+ -complete=command VCommand call utils#output(<f-args>)

" Put bash command into a new window
command! -nargs=* -complete=shellcmd Shell new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

" Put today's date into the buffer
command! Today :-1pu=strftime('%b-%d-%Y')

" set width to tabs and spaces
command! -nargs=+ SetTabWidth call utils#setTabSpace(<args>)

" pretty things with coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
