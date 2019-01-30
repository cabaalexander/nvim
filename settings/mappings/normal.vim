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
nnoremap <silent>tf :VtrFlushCommand<CR>
nnoremap <silent>tk :VtrKillRunner<CR>
noremap <silent>tl :VtrSendLinesToRunner!<CR>
nnoremap ta :VtrAttachToPane 
