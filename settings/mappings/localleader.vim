" Edit file, starting in the same directory as current file
nnoremap <localleader>e :edit <C-r>=expand('%:p:h') . '/'<CR>

" Shows the path of the current file
nnoremap <localleader>p :echo expand('%:p')<CR>

" Open last buffer
nnoremap <localleader><localleader> <C-^>

" Toggle linenumbers
nnoremap <silent> <localleader>tn :call utils#toggleNumbers()<CR>

" Disables search highlight
nnoremap <silent> <localleader>h :noh<CR>

" Zap trailing whitespace in the current buffer
nnoremap <silent> <localleader>zz :call utils#zap()<CR>

" ############
" #          #
" # Snippets #
" #          #
" ############

" ~/bin/function Snippet
nnoremap <localleader>sbin :-1read ${HOME}/.config/nvim/snippets/bin-function.sh<CR>2j

" Relative import (partial)
nnoremap <localleader>sreq :read ${HOME}/.config/nvim/snippets/partials/relative-require.sh<CR>}jf0C

" Compile from git
nnoremap <localleader>scfg :-1read ${HOME}/.config/nvim/snippets/compile-from-git.sh<CR>

" Doge
nnoremap <localleader>sdoge :read ${HOME}/.config/nvim/snippets/partials/doge.txt<CR>

" ##########
" #        #
" # Visual #
" #        #
" ##########

" Sort lines
vnoremap <localleader>o :sort<CR>
