" replace in buffer
nnoremap <leader>R :%s/

" Force edit current buffer
nnoremap <silent> <leader>E :e!<CR>

" NERDTree find current file in tree
nnoremap <silent> <leader>v :NERDTreeFind<CR>

" Delete current buffer
nnoremap <silent> <leader>q :bd<CR>

" Force delete current buffer
nnoremap <silent> <leader>Q :bd!<CR>

" Saves current buffer
nnoremap <leader>s :w<CR>

" Saves all buffers
nnoremap <leader>S :wa<CR>

" Quit All
nnoremap <leader>x :qa<CR>

" Quit All --force
nnoremap <leader>X :qa!<CR>

" Show Git's Blame :: Plugin Related
nnoremap <leader>gb :Gblame<CR>
noremap <leader>gB :Gbrowse!<CR>
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

" fzf
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :BCommits<CR>
nnoremap <leader>C :Commits<CR>
nnoremap <leader>l :BLines<CR>
nnoremap <leader>L :Lines<CR>
nnoremap <leader>t :BTags<CR>
nnoremap <leader>T :Tags<CR>
nnoremap <leader>/ :History/<CR>
nnoremap <leader>; :History:<CR>
nnoremap <leader>: :Commands<CR>
nnoremap <leader>m :Map<CR>
nnoremap <leader>M :Marks<CR>

" vim-tmux-runner
nnoremap <silent> <leader>r :VtrSendFile!<CR>

" Notes
nnoremap <leader>N :Note<space>

" RIPGREP
nnoremap <leader>F :Find<space>

" Disables search highlight
nnoremap <silent> <leader>nh :noh<CR>

" projectionist
nnoremap <silent> <leader>paa :A<CR>
nnoremap <silent> <leader>pas :AS<CR>
nnoremap <silent> <leader>pav :AV<CR>

" vim-windowswap
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" buftabline
for i in range(1, g:buftabline_plug_max)
    exe 'map <leader>'.i.' <Plug>BufTabLine.Go('.i.')'
endfor
