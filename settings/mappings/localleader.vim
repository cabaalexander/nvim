" Edit file, starting in the same directory as current file
nnoremap <localleader>ef :edit <C-r>=expand('%:p:h') . '/'<CR>

" Edit snippet filetype
nnoremap <silent> <localleader>es :NeoSnippetEdit<CR>

" Shows the path of the current file
nnoremap <localleader>p :echo expand('%:p')<CR>

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

nnoremap <silent> <localleader>q :bufdo bd<CR>

" ALE
nnoremap <localleader>ad :ALEDetail<CR>
nnoremap <localleader>af :ALEFix<CR>


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
vnoremap <localleader>n :norm!<space>

