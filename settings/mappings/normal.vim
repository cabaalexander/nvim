" Copy to clipboard
nnoremap <C-c> "+y

" NerdTree Toggle
nnoremap <C-n> :NERDTreeToggle<CR>

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
nmap <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>e <Plug>(easymotion-bd-e)

" Block some default keys
nnoremap <space> <NOP>
nnoremap <backspace> <NOP>
nnoremap <CR> <NOP>

" Open Tagbar
nnoremap <F8> :TagbarToggle<CR>

" Remap `: -> ;`
nnoremap ; :
nnoremap : ;

