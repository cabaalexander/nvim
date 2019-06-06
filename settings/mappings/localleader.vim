" Edit file, starting in the same directory as current file
nnoremap <localleader>ef :edit <C-r>=expand('%:p:h') . '/'<CR>

" Edit snippet filetype
nnoremap <silent> <localleader>es :NeoSnippetEdit<CR>

" Shows the path of the current file
nnoremap <localleader>p :echo expand('%:p')<CR>
nnoremap <localleader>cp :let @+=expand('%:t')<CR>

" Open last buffer
nnoremap <localleader><localleader> <C-^>

" Toggle linenumbers
nnoremap <silent> <localleader>tn :call utils#toggleNumbers()<CR>

" Zap trailing whitespace in the current buffer
nnoremap <silent> <localleader>zz :call utils#zap()<CR>

" Show messages list
nnoremap <localleader>m :messages<CR>

" Open terminal
nnoremap <localleader>T :terminal<CR>a

" Sets the working directory to current buffer
nnoremap <silent> <localleader>lcd :call utils#toggleLCD()<CR>

nnoremap <localleader>tN :ShowTaggedNotes<CR>

nnoremap <silent> <localleader>c :call utils#toggleConceal()<CR>

" close things
nnoremap <silent> <localleader>qa :silent bufdo bd<CR>
nnoremap <silent> <localleader>qf :cclose<CR>

noremap  <silent> <localleader>tl :VtrSendLinesToRunner!<CR>

" ALE
nnoremap <silent> <localleader>ad :ALEDetail<CR>
nnoremap <silent> <localleader>af :ALEFix<CR>

" ferret
nmap <localleader>ff <Plug>(FerretAck)
nmap <localleader>fl <Plug>(FerretLack)
nmap <localleader>fw <Plug>(FerretAckWord)
nmap <localleader>fr <Plug>(FerretAcks)

" fzf
nnoremap <localleader>Fw :Rg <C-r><C-w><CR>

" ############
" #          #
" # Snippets #
" #          #
" ############

" Doge
nnoremap <silent> <localleader>sdoge :read ${HOME}/.config/nvim/snippets/doge.txt<CR>}o

" ##########
" #        #
" # Visual #
" #        #
" ##########

" Sort lines
vnoremap <localleader>o :sort<CR>
vnoremap <localleader>n :norm<space>

