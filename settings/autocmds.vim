"Begin autocommand
augroup vimrcEx

  au!

  " When editing a file, always jump to the lat known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  au BufReadPost *
    \ if line ("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

  " On Enter
  au VimEnter *
    \ :call utils#obsessed()

  " On Leave
  au VimLeave * :call VimLeaveAU()
  function! VimLeaveAU() abort
    " toggleGrip
    let g:toggleGripBool=1
    silent call utils#toggleGrip()

    " vim-tmux-runner
    :VtrKillRunner
  endfunction

  " Elm file types
  au FileType elm :call ElmAU()
  function! ElmAU() abort
      nmap <leader>m <Plug>(elm-make)
      nmap <leader>M <Plug>(elm-make-main)
      nmap <leader>d <Plug>(elm-show-docs)
  endfunction

  " Terminal mode
  au TermOpen * :call TermAU()
  function! TermAU() abort
      set nonu
      set norelativenumber
  endfunction

augroup END
