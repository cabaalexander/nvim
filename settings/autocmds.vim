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

  " notes
  au FileType notes :call NotesAU()
  function! NotesAU() abort
      let b:indentLine_enabled = 0
  endfunction

  " NERDTree
  au FileType nerdtree :call NERDTreeAU()
  function! NERDTreeAU() abort
      setlocal number
      setlocal relativenumber
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
      setlocal nonumber
      setlocal norelativenumber
  endfunction

augroup END
