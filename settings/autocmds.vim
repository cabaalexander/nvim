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

  " On Enter
  au VimEnter * :call VimEnterAU()
  function! VimEnterAU() abort
      " start obsessed (keep session)
      call utils#obsessed()

      " enable `doing-today` mapping
      function! s:todayNote() abort
          call <SID>updateRepo()
          exec 'Note ' . 'doing.today - ' . strftime('%d.%m.%y')
      endfunction
      nnoremap <silent><localleader>n :call <SID>todayNote()<CR>
  endfunction

  " {{{ notes:util-functions
  function! s:runShell(cmd) abort
      let l:command = system('cd ~/.notes && ' . a:cmd)
      return l:command
  endfunction

  function! s:updateRepo() abort
      echo
      let l:currentBranch=<SID>runShell('git symbolic-ref --short -q HEAD')
      call <SID>runShell('git fetch origin '.l:currentBranch.' &> /dev/null')
      call <SID>runShell('git reset --hard origin/'.l:currentBranch)
      echom 'Notes repo updated'
  endfunction

  function! s:saveRepo() abort
      echo
      silent write
      call <SID>runShell('git add .')
      call <SID>runShell('git commit --amend --no-edit')
      call <SID>runShell('git push origin master -f')
      echom 'Note saved (and repo too)'
  endfunction

  " }}}

  " notes
  au FileType notes :call NotesAU()
  function! NotesAU() abort
      nnoremap <buffer><silent><leader>s :call <SID>saveRepo()<CR>
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
