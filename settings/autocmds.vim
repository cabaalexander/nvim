"Begin autocommand
augroup vimrcEx

  autocmd!

  " Set limit to 78 characters per line
  autocmd FileType text setlocal textwidth=80

  " When editing a file, always jump to the lat known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost *
    \ if line ("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

  " On Enter
  autocmd VimEnter *
    \ :call utils#obsessed()

  " On Leave
  autocmd VimLeave * let g:toggleGripBool=1
  autocmd VimLeave * :call utils#toggleGrip()

augroup END
