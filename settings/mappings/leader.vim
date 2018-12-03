" Force edit current buffer
nnoremap <silent> <leader>E :e!<CR>

" Move to next/previous buffer
nnoremap <silent> <leader>nb :bn!<CR>
nnoremap <silent> <leader>pb :bp!<CR>

" Ale: Move to the next/previous error
nmap <silent> <leader>pe <Plug>(ale_previous_wrap)
nmap <silent> <leader>ne <Plug>(ale_next_wrap)

" Delete current buffer
nnoremap <leader>q :bd<CR>

" Force delete current buffer
nnoremap <leader>Q :bd!<CR>

" Saves current buffer
nnoremap <leader>s :w<CR>

" Saves all buffers
nnoremap <leader>S :wa<CR>

" Save current buffer and quit vim
nnoremap <leader>A :wq<CR>

" Save current buffer and close current buffer
nnoremap <leader>a :w<bar>bd<CR>

" Quit All
nnoremap <leader>x :qa<CR>

" Quit All --force
nnoremap <leader>X :qa!<CR>

" Source VIMRC
nnoremap <leader>R :source<space>$MYVIMRC<CR>

" Show Git's Blame :: Plugin Related
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :GFiles?<CR>

" Plugin Manager
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pl :PlugStatus<CR>
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pu :PlugUpdate<CR>
nnoremap <leader>pU :PlugUpgrade<CR>

" Calls `Obsession` plugin
nnoremap <leader>o :Obsession<CR>

" FZF
nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :BCommits<CR>
nnoremap <leader>C :Commits<CR>
nnoremap <leader>l :BLines<CR>
nnoremap <leader>L :Lines<CR>
nnoremap <leader>t :BTags<CR>
nnoremap <leader>T :Tags<CR>
nnoremap <leader>/ :History/<CR>
nnoremap <leader>; :History:<CR>
nnoremap <leader>m :Map<CR>

" ALE
nnoremap <leader>h :ALEDetail<CR>

" TMUX Send
nnoremap <silent> <leader>r :call utils#tmuxSend()<CR>

