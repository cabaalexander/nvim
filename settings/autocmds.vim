"Begin autocommand
augroup vimrcEx

  au!

  " When editing a file, always jump to the lat known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  au BufReadPost *
    \ if line ("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

  " man pages
  au FileType man set conceallevel=0

  " notes
  au FileType notes :call NotesAU()
  function! NotesAU() abort
      let b:indentLine_enabled = 0
  endfunction

  " json
  au FileType json :call JsonAU()
  function! JsonAU() abort
    set sw=2
    set ts=2
  endfunction

  " relative number for: NERDTree,
  au FileType nerdtree,coc-explorer :call RelativeNumberAU()
  function! RelativeNumberAU() abort
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
