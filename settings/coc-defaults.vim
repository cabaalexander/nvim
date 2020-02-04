" defaults {{{
" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" }}}

" mappings {{{
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> -gd <Plug>(coc-definition)
nmap <silent> -gy <Plug>(coc-type-definition)
nmap <silent> -gi <Plug>(coc-implementation)
nmap <silent> -gr <Plug>(coc-references)

" Remap for rename current word
nmap -rn <Plug>(coc-rename)

" Remap for format selected region
xmap -f  <Plug>(coc-format-selected)
nmap -f  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap -a  <Plug>(coc-codeaction-selected)
nmap -a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap -ca  <Plug>(coc-codeaction)

" Fix autofix problem of current line
nmap -cf  <Plug>(coc-fix-current)

nmap <silent> -[e <Plug>(coc-diagnostic-prev)
nmap <silent> -]e <Plug>(coc-diagnostic-next)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Using CocList
" Show all diagnostics
nnoremap <silent> -cd  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> -ce  :<C-u>CocList extensions<cr>
" Show Info
nnoremap <silent> -ci  :<C-u>CocInfo<cr>
" Show commands
nnoremap <silent> -cc  :<C-u>CocList commands<cr>
" Open CocConfig
nnoremap <silent> -cC  :<C-u>CocConfig<cr>
" Find symbol of current document
nnoremap <silent> -co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> -cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> -cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> -ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> -cp  :<C-u>CocListResume<CR>
" coc.nvim marketplace
nnoremap <silent> -cm  :<C-u>CocList marketplace<CR>

" Use -K to show documentation in preview window
nnoremap <silent> -K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" }}}

" AUcmd {{{
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" }}}

" commands {{{
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" }}}
