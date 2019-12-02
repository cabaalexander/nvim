" Copy to clipboard
nnoremap <C-c> "+y

" NerdTree Toggle
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" Switch between panes using directional keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Avoid unintentional switches to Ex mode
nmap Q gq

" Move Lines up and down
nnoremap 0 ddp
nnoremap ) ddkP

" Easy motion
nmap <silent> <leader><leader>w <Plug>(easymotion-bd-w)
nmap <silent> <leader><leader>e <Plug>(easymotion-bd-e)

" Block some default keys
nnoremap <space> <NOP>
nnoremap <backspace> <NOP>
nnoremap <CR> <NOP>

" Open Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>

" Remap `: -> ;`
nnoremap ; :
nnoremap : ;

" vim-tmux-runner
nnoremap <silent>tr :VtrSendCommandToRunner!<CR>
nnoremap <silent>tR :VtrFlushCommand<CR>:VtrSendCommandToRunner!<CR>
nnoremap <silent>tf :VtrFocusRunner<CR>
nnoremap <silent>tk :VtrKillRunner<CR>
nnoremap ta :call tmux#attachToNext()<CR>
nnoremap tA :VtrAttachToPane

" neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" Ale
nmap <silent>[e <Plug>(ale_previous_wrap)
nmap <silent>]e <Plug>(ale_next_wrap)

" Move to next/previous buffer
nnoremap <silent>[b :bp!<CR>
nnoremap <silent>]b :bn!<CR>

" quickfix next and previous
nnoremap <silent>[f :cN<CR>
nnoremap <silent>]f :cn<CR>

" tabs next and previous
nnoremap <silent>]t gt<CR>
nnoremap <silent>[t gT<CR>

" easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <silent> <cr> :call LanguageClient#textDocument_hover()<cr>

" ##########
" #        #
" # insert #
" #        #
" ##########
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
